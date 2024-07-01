// ignore_for_file: unused_local_variable

// import 'package:e_commerce_app/Model/Product_Model.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_state.dart';
// import 'package:e_commerce_app/services/all_product_services.dart';
import 'package:e_commerce_app/widget/home/BarHomePAge.dart';
import 'package:e_commerce_app/widget/home/Latest_products.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:e_commerce_app/widget/home/SearchWidget.dart';
import 'package:e_commerce_app/widget/home/SwiperWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    /**
     ** WidgetsBinding هو كائن يتم استخدامه في Flutter للوصول إلى وظائف مختلفة تتعلق بالتفاعل بين واجهة المستخدم والمحرك.
     ** addPostFrameCallback() هي وظيفة تسمح لك بتحديد دالة يجب استدعاؤها بمجرد اكتمال بناء وتجهيز إطار الواجهة بشكل كامل
     ** WidgetsBinding.instance يوفر الوصول إلى النسخة الحالية لـ WidgetsBinding.
     ** في هذا السياق، _ هو اسم مستخدم للإشارة إلى المعلمة التي تمر إلى الدالة الصغيرة (callback).
     ** الدالة الصغيرة تحتوي على الشيفرة التي تريد تنفيذها بمجرد اكتمال بناء الواجهة.
     ** يمكنك استخدامها بمجرد اكتمال بناء وتجهيز إطار الواجهة بشكل كامل.
     */
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var getProdectCubit = BlocProvider.of<GetProdectCubit>(context);
      getProdectCubit.getProdect();
    });
    // ~ or using this code
    // var getProdectCubit = context.read<GetProdectCubit>().getProdect();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        //* Unfocus any focused input field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: BarHomePAge(context),
        body: BlocBuilder<GetProdectCubit, GetProdectState>(
          builder: (context, state) {
            print("***************Current state: $state***************");
            if (state is GetProductLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetProductFailureState) {
              return Center(child: Text('Error: ${state.error}'));
            } else if (state is GetProductSuccessState ||
                state is GetProducttate) {
              return DataHomePage(size: size);
            } else {
              return Center(child: Text('*************Error*******'));
            }
          },
        ),
        /* body: FutureBuilder(
          future: AllProductServices().getAllProducts(),
          builder: (BuildContext, Snapshot) {
            if (Snapshot.hasData) {
              List<ProductModel> product = Snapshot.data!;
              return DataHomePage(size: size);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),*/
      ),
    );
  }
}

class DataHomePage extends StatelessWidget {
  const DataHomePage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    var ProductModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 18),
          const SearchWidget(),
          const SizedBox(height: 18),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.25,
                    child: SwiperWidget(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Latest_products(),
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (Context, index) {
                      return Prodectwidget(
                        index: index,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
