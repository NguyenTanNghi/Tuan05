<%--
  Created by IntelliJ IDEA.
  User: Tan Nghi
  Date: 9/19/2025
  Time: 5:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Quản Lý Sản Phẩm</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #6a11cb, #2575fc);
                margin: 0;
                padding: 0;
            }
            .container {
                max-width: 900px;
                margin: 50px auto;
                background: #fff;
                padding: 25px 30px;
                border-radius: 15px;
                box-shadow: 0 10px 25px rgba(0,0,0,0.2);
                animation: fadeInUp 0.7s ease;
            }
            h1 {
                text-align: center;
                margin-bottom: 25px;
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                overflow: hidden;
                border-radius: 12px;
            }
            th, td {
                padding: 12px 15px;
                text-align: center;
            }
            th {
                background: #6a11cb;
                color: #fff;
                text-transform: uppercase;
                letter-spacing: 0.05em;
            }
            tr:nth-child(even) {
                background: #f9f9f9;
            }
            tr:hover {
                background: #f1f1ff;
                transition: 0.3s;
            }
            .btn-delete {
                background: #e74c3c;
                color: #fff;
                padding: 6px 14px;
                border: none;
                border-radius: 6px;
                text-decoration: none;
                font-size: 14px;
                transition: 0.3s;
            }
            .btn-delete:hover {
                background: #c0392b;
                box-shadow: 0 5px 12px rgba(0,0,0,0.2);
                transform: translateY(-2px);
            }
            .top-actions {
                display: flex;
                justify-content: flex-end;
                margin-bottom: 15px;
            }
            .btn-add {
                background: #2575fc;
                color: #fff;
                padding: 8px 18px;
                border-radius: 8px;
                text-decoration: none;
                transition: 0.3s;
            }
            .btn-add:hover {
                background: #6a11cb;
                transform: translateY(-2px);
                box-shadow: 0 5px 12px rgba(0,0,0,0.2);
            }
            @keyframes fadeInUp {
                from {
                    transform: translateY(30px);
                    opacity: 0;
                }
                to {
                    transform: translateY(0);
                    opacity: 1;
                }
            }
        </style>
        <script>
            function confirmDelete(maDT) {
                if (confirm("Bạn có chắc chắn muốn xóa điện thoại có mã " + maDT + "?")) {
                    window.location.href = 'xoa-dien-thoai?maDT=' + maDT;
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <h1>Quản lý Điện thoại</h1>

            <div class="top-actions">
                <a href="them-dien-thoai" class="btn-add">+ Thêm Điện Thoại</a>
            </div>

            <table>
                <tr>
                    <th>Mã ĐT</th>
                    <th>Tên Điện Thoại</th>
                    <th>Năm SX</th>
                    <th>Hành động</th>
                </tr>
                <c:forEach items="${listAllDT}" var="dt">
                    <tr>
                        <td>${dt.maDT}</td>
                        <td>${dt.tenDT}</td>
                        <td>${dt.namSanXuat}</td>
                        <td>
                            <a href="#" class="btn-delete" onclick="confirmDelete('${dt.maDT}')">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
