import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/product/cart_counter/cart_counter_widget.dart';
import '/product/product_item_card/product_item_card_widget.dart';
import '/profile/categories/categories_widget.dart';
import '/profile/profile_avatar/profile_avatar_widget.dart';
import 'product_list_page_widget.dart' show ProductListPageWidget;
import 'package:flutter/material.dart';

class ProductListPageModel extends FlutterFlowModel<ProductListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for categories component.
  late CategoriesModel categoriesModel1;
  // Model for categories component.
  late CategoriesModel categoriesModel2;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel1;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel2;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel3;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel4;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel5;
  // Model for productItemCard component.
  late ProductItemCardModel productItemCardModel6;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for CartCounter component.
  late CartCounterModel cartCounterModel;
  // Model for ProfileAvatar component.
  late ProfileAvatarModel profileAvatarModel;

  @override
  void initState(BuildContext context) {
    categoriesModel1 = createModel(context, () => CategoriesModel());
    categoriesModel2 = createModel(context, () => CategoriesModel());
    productItemCardModel1 = createModel(context, () => ProductItemCardModel());
    productItemCardModel2 = createModel(context, () => ProductItemCardModel());
    productItemCardModel3 = createModel(context, () => ProductItemCardModel());
    productItemCardModel4 = createModel(context, () => ProductItemCardModel());
    productItemCardModel5 = createModel(context, () => ProductItemCardModel());
    productItemCardModel6 = createModel(context, () => ProductItemCardModel());
    cartCounterModel = createModel(context, () => CartCounterModel());
    profileAvatarModel = createModel(context, () => ProfileAvatarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoriesModel1.dispose();
    categoriesModel2.dispose();
    productItemCardModel1.dispose();
    productItemCardModel2.dispose();
    productItemCardModel3.dispose();
    productItemCardModel4.dispose();
    productItemCardModel5.dispose();
    productItemCardModel6.dispose();
    cartCounterModel.dispose();
    profileAvatarModel.dispose();
  }
}
