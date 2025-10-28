<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật sản phẩm</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style_add.css">
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background: #f5f8ff;
            display: flex;
            justify-content: center;
            padding: 40px;
        }
        .container {
            background: #fff;
            padding: 25px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 600px;
        }
        fieldset {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }
        legend {
            font-weight: bold;
            color: #0078d4;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: 500;
        }
        input[type="text"], textarea, select {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-top: 4px;
        }
        textarea { resize: none; height: 60px; }
        .btn-primary {
            display: block;
            width: 100%;
            background: #0078d4;
            color: white;
            border: none;
            padding: 10px 0;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
        }
        .btn-primary:hover { background: #005fa3; }
        .back-link {
            display: inline-block;
            margin-top: 10px;
            color: #0078d4;
            text-decoration: none;
            font-size: 14px;
        }
        .back-link:hover { text-decoration: underline; }
    </style>
</head>
<body>
<div class="container">
    <h2>✏️ Cập nhật sản phẩm ID: <s:property value="product.id"/></h2>

    <form action="updateProduct.action" method="post">
        <input type="hidden" name="product.id" value="<s:property value='product.id'/>"/>

        <fieldset>
            <legend>🇻🇳 Tiếng Việt</legend>
            <label>Tên sản phẩm:</label>
            <input type="text" name="product.name_vi" value="<s:property value='product.name_vi'/>"/>
            <label>Mô tả:</label>
            <textarea name="product.description_vi"><s:property value='product.description_vi'/></textarea>
        </fieldset>

        <fieldset>
            <legend>🇺🇸 English</legend>
            <label>Product Name:</label>
            <input type="text" name="product.name_en" value="<s:property value='product.name_en'/>"/>
            <label>Description:</label>
            <textarea name="product.description_en"><s:property value='product.description_en'/></textarea>
        </fieldset>

        <fieldset>
            <legend>💰 Thông tin chung</legend>
            <label>Giá:</label>
            <input type="text" name="product.price" value="<s:property value='product.price'/>"/>
            <label>Trọng lượng (kg):</label>
            <input type="text" name="product.weight" value="<s:property value='product.weight'/>"/>
            <label>Loại:</label>
            <select name="product.categoryID">
                <option value="1" <s:if test="product.categoryID == 1">selected</s:if>>Book</option>
                <option value="2" <s:if test="product.categoryID == 2">selected</s:if>>Software License</option>
            </select>
        </fieldset>

        <button type="submit" class="btn-primary">💾 Lưu thay đổi</button>
        <a href="product.action" class="back-link">← Quay lại danh sách</a>
    </form>
</div>
</body>
</html>
