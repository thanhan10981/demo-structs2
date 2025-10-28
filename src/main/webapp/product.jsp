<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
</head>
<body>
    <h2>Danh sách sản phẩm - Ngôn ngữ: <s:property value="lang"/></h2>
   <div class="toolbar">
       <div class="left">
           <a href="add_product.jsp" class="btn-add">Thêm sản phẩm</a>
       </div>
       <div class="right">
           <form action="product.action" method="get">
               <label>Chọn ngôn ngữ:</label>
               <select name="lang">
                   <option value="vi">Tiếng Việt</option>
                   <option value="en">English</option>
               </select>
               <input type="submit" value="Đổi"/>
           </form>
       </div>
   </div>

    <hr/>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Mô tả</th>
            <th>Giá</th>
            <th>Trọng lượng</th>
            <th>Loại</th>
            <th>Hành động</th>
        </tr>
        <s:iterator value="products">
            <tr>
                <td><s:property value="id"/></td>

                <s:if test="%{lang == 'vi'}">
                    <td><s:property value="name_vi"/></td>
                    <td><s:property value="description_vi"/></td>
                </s:if>
                <s:else>
                    <td><s:property value="name_en"/></td>
                    <td><s:property value="description_en"/></td>
                </s:else>

                <td><s:property value="price"/></td>
                <td><s:property value="weight"/></td>
                <td><s:property value="categoryName"/></td>
                <td>
                    <a href="editProduct.action?id=<s:property value='id'/>">Sửa</a> |
                    <a href="javascript:void(0)" onclick="confirmDelete(<s:property value='id'/>)">Xoá</a>
                </td>

            </tr>
        </s:iterator>

    </table>
</body>
<script>
    function confirmDelete(productId) {
        if (confirm('Bạn có chắc muốn xoá sản phẩm ID ' + productId + ' không?')) {
            window.location.href = 'deleteProduct.action?id=' + productId;
        }
    }
</script>

</html>
