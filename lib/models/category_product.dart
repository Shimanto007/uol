// To parse this JSON data, do
//
//     final categoryProduct = categoryProductFromJson(jsonString);

import 'dart:convert';

CategoryProduct categoryProductFromJson(String str) => CategoryProduct.fromJson(json.decode(str));

String categoryProductToJson(CategoryProduct data) => json.encode(data.toJson());

class CategoryProduct {
    CategoryProduct({
        required this.products,
    });

    List<Product> products;

    factory CategoryProduct.fromJson(Map<String, dynamic> json) => CategoryProduct(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        required this.id,
        required this.sectionId,
        required this.categoryId,
        required this.brandId,
        required this.productCollectionId,
        required this.adminId,
        required this.adminType,
        required this.productName,
        required this.productCode,
        required this.productImage,
        required this.shortDescription,
        required this.description,
        required this.productPrice,
        required this.productDiscount,
        this.productQty,
        required this.productWeight,
        required this.productVideo,
        required this.productColor,
        required this.productSize,
        required this.productTags,
        required this.attributes,
        required this.metaTitle,
        required this.metaDescription,
        required this.metaKeywords,
        required this.isPopular,
        required this.isFeatured,
        required this.isBestseller,
        required this.isDealsday,
        required this.status,
        required this.stock,
        required this.productSlug,
        required this.taxId,
        required this.createdAt,
        required this.updatedAt,
        required this.images,
        required this.section,
        required this.category,
        // required this.productcollection,
    });

    int? id;
    int? sectionId;
    int? categoryId;
    int? brandId;
    int? productCollectionId;
    int? adminId;
    String? adminType;
    String? productName;
    String? productCode;
    String? productImage;
    String? shortDescription;
    String? description;
    int productPrice;
    int? productDiscount;
    dynamic productQty;
    String? productWeight;
    String? productVideo;
    String? productColor;
    String? productSize;
    String? productTags;
    String? attributes;
    String? metaTitle;
    String? metaDescription;
    String? metaKeywords;
    String? isPopular;
    String? isFeatured;
    String? isBestseller;
    String? isDealsday;
    int? status;
    int? stock;
    String? productSlug;
    int? taxId;
    String? createdAt;
    String? updatedAt;
    List<Image>? images;
    Section? section;
    Category? category;
    // Productcollection productcollection;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        sectionId: json["section_id"],
        categoryId: json["category_id"],
        brandId: json["brand_id"] == null ? null : json["brand_id"],
        productCollectionId: json["product_collection_id"] == null ? null : json["product_collection_id"],
        adminId: json["admin_id"],
        adminType: json["admin_type"],
        productName: json["product_name"],
        productCode: json["product_code"] == null ? null : json["product_code"],
        productImage: json["product_image"],
        shortDescription: json["short_description"] == null ? null : json["short_description"],
        description: json["description"] == null ? null : json["description"],
        productPrice: json["product_price"],
        productDiscount: json["product_discount"],
        productQty: json["product_qty"],
        productWeight: json["product_weight"] == null ? null : json["product_weight"],
        productVideo: json["product_video"] == null ? null : json["product_video"],
        productColor: json["product_color"] == null ? null : json["product_color"],
        productSize: json["product_size"] == null ? null : json["product_size"],
        productTags: json["product_tags"] == null ? null : json["product_tags"],
        attributes: json["attributes"] == null ? null : json["attributes"],
        metaTitle: json["meta_title"] == null ? null : json["meta_title"],
        metaDescription: json["meta_description"] == null ? null : json["meta_description"],
        metaKeywords: json["meta_keywords"] == null ? null : json["meta_keywords"],
        isPopular: json["is_popular"],
        isFeatured: json["is_featured"],
        isBestseller: json["is_bestseller"],
        isDealsday: json["is_dealsday"],
        status: json["status"],
        stock: json["stock"] == null ? null : json["stock"],
        productSlug: json["product_slug"],
        taxId: json["tax_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        section: Section.fromJson(json["section"]),
        category: Category.fromJson(json["category"]),
        // productcollection: Productcollection.fromJson(json["productcollection"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "section_id": sectionId,
        "category_id": categoryId,
        "brand_id": brandId == null ? null : brandId,
        "product_collection_id": productCollectionId == null ? null : productCollectionId,
        "admin_id": adminId,
        "admin_type": adminType,
        "product_name": productName,
        "product_code": productCode == null ? null : productCode,
        "product_image": productImage,
        "short_description": shortDescription == null ? null : shortDescription,
        "description": description == null ? null : description,
        "product_price": productPrice,
        "product_discount": productDiscount,
        "product_qty": productQty,
        "product_weight": productWeight == null ? null : productWeight,
        "product_video": productVideo == null ? null : productVideo,
        "product_color": productColor == null ? null : productColor,
        "product_size": productSize == null ? null : productSize,
        "product_tags": productTags == null ? null : productTags,
        "attributes": attributes == null ? null : attributes,
        "meta_title": metaTitle == null ? null : metaTitle,
        "meta_description": metaDescription == null ? null : metaDescription,
        "meta_keywords": metaKeywords == null ? null : metaKeywords,
        "is_popular": isPopular,
        "is_featured": isFeatured,
        "is_bestseller": isBestseller,
        "is_dealsday": isDealsday,
        "status": status,
        "stock": stock == null ? null : stock,
        "product_slug": productSlug,
        "tax_id": taxId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "section": section!.toJson(),
        "category": category!.toJson(),
        // "productcollection": productcollection == null ? null : productcollection.toJson(),
    };
}

class Category {
    Category({
        required this.id,
        required this.categoryName,
    });

    int id;
    String categoryName;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        categoryName: json["category_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
    };
}

class Image {
    Image({
        required this.id,
        required this.productId,
        required this.image,
    });

    int id;
    int productId;
    String image;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        productId: json["product_id"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "image": image,
    };
}

class Productcollection {
    Productcollection({
        required this.id,
        required this.name,
        required this.discountType,
        required this.discountAmount,
        required this.startDate,
        required this.endDate,
        required this.status,
    });

    int id;
    String name;
    String discountType;
    String discountAmount;
    String startDate;
    String endDate;
    int status;

    factory Productcollection.fromJson(Map<String, dynamic> json) => Productcollection(
        id: json["id"],
        name: json["name"],
        discountType: json["discount_type"],
        discountAmount: json["discount_amount"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "discount_type": discountType,
        "discount_amount": discountAmount,
        "start_date": startDate,
        "end_date": endDate,
        "status": status,
    };
}

class Section {
    Section({
        required this.id,
        required this.name,
    });

    int id;
    String name;

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class Tax {
    Tax({
        required this.id,
        required this.title,
        required this.percentage,
    });

    int id;
    String title;
    int percentage;

    factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        id: json["id"],
        title: json["title"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "percentage": percentage,
    };
}