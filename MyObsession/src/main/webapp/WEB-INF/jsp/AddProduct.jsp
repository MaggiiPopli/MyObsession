<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="F"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
    background: url('https://userscontent2.emaze.com/images/7035292f-29ff-4935-9f48-5daca8367237/651874626bf646ca8b11da4718574a98.jpeg')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
}

.wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 99;
}

p.form-title
{
    font-family: 'Comic Sans MS' , sans-serif;
    font-size: 30px;
    font-weight: 600;
    font-style: italic;
    text-align: center;
    color: #FF5733;
    margin-top: 5%;
}

form
{
    width: 250px;
    margin: 0 auto;
}

form.login input[type="text"], form.login input[type="password"]
{
    width: 100%;
    margin: 0;
    padding: 5px 10px;
    background: 0;
    border: 0;
    border-bottom: 1px solid #581845;
    outline: 0;
    font-style: italic;
    font-size: 17px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 5px;
    color: #581845;
    outline: 0;
}

form.login input[type="submit"]
{
    width: 100%;
    font-size: 15px;
    text-transform: uppercase;
    font-family: 'Comic Sans MS' , sans-serif;
    font-weight: 500;
    margin-top: 16px;
    outline: 0;
    cursor: pointer;
    color:#FF5733;
    letter-spacing: 1px;
}

form.login input[type="submit"]:hover
{
    transition: background-color 0.5s ease;
}

form.login .remember-forgot
{
    float: left;
    width: 100%;
    margin: 10px 0 0 0;
}
form.login .forgot-pass-content
{
    min-height: 20px;
    margin-top: 10px;
    margin-bottom: 10px;
}
form.login label, form.login a
{
    font-size: 13px;
    font-weight: 400;
    color: #581845;
}

form.login a
{
    transition: color 0.5s ease;
}

form.login a:hover
{
    color: #2ecc71;
}

.pr-wrap
{
    width: 100%;
    height: 100%;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 999;
    display: none;
}


</style>
</head>
<body>
<div class="container">
    
            <div class="wrap">
                <p class="form-title">
                    Add Product</p>
                <F:form class="login" action="addproduct" method="post" enctype="multipart/form-data">
               <F:input path="product_id" placeholder="Product ID" />
                <F:input path="name" placeholder="Product Name" />
                <F:input path="brand" placeholder="Brand" />
                <F:input path="price" placeholder="Product Price"/>
                <F:input path="description" placeholder="Description"/> 
                <F:select path="supplier_name">
                <F:option value="None" label="Supplier Name"/>
                <F:options items="${ListS}"/>
                </F:select><br><br>
                <F:select path="category_name">
                <F:option value="None" label="Category Name"/>
                <F:options items="${ListC}"/>
                </F:select><br><br>
                
                Add Image:<input type="file" name="image"/>
				<input type="submit" value="Add" class="btn btn-success btn-sm" />
                          </F:form>
            </div>
        </div>
</body>
</html>