<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm mới</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style_add.css">
</head>

<body>
    <div class="container">
        <h2>Thêm sản phẩm mới (Song ngữ VI + EN)</h2>

        <form action="addProduct.action" method="post">
            <fieldset>
                <legend>🇻🇳 Thông tin Tiếng Việt</legend>
                <label>Tên sản phẩm (VI):</label>
                <input type="text" name="product.name_vi" required>

                <label>Mô tả (VI):</label>
                <textarea name="product.description_vi" required></textarea>
            </fieldset>

            <fieldset>
                <legend>🇺🇸 English Information</legend>
                <label>Product Name (EN):</label>
                <input type="text" name="product.name_en" required>

                <label>Description (EN):</label>
                <textarea name="product.description_en" required></textarea>
            </fieldset>

            <fieldset>
                <legend>💰 Thông tin chung</legend>
                <label>Giá:</label>
                <input type="number" name="product.price" step="0.01" min="0" required>

                <label>Trọng lượng (kg):</label>
                <input type="number" name="product.weight" step="0.1" min="0" required>

                <label>Loại sản phẩm:</label>
                <select name="product.categoryID" required>
                    <option value="">-- Chọn loại --</option>
                    <option value="1">Book</option>
                    <option value="2">Software License</option>
                </select>
            </fieldset>

            <button type="submit" class="btn-primary">➕ Thêm sản phẩm</button>
        </form>

        <a href="product.action" class="back-link">← Quay lại danh sách</a>
    </div>
</body>
</html>
