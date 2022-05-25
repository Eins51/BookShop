# CPT202 Project -- A9-Null Bookshop
### You can also access the code from Aliyun: http://47.110.47.57:8080/bookshop/index

## How does it work?
1. git clone https://github.com/Eins51/BookShop.git to your own computer
2. import the bookshop_databse.sql to your own database
3. open with a compiler(IDEA is recommended) and add configuration
4. run the Tomcat and open the browser: http://localhost:8080/BookShop_war_exploded/

## Technology stack
#### Frontend: HTML + CSS + JavaScript + Bootstrap + JSP
#### Backend: Tomcat + Servlet + JDBC + MySQL

## Project structure
```
|---BookShop
|   |---bookshop_database.sql  //database of the online bookshop
|   |---bookshop
|   |   |---src //backend code folder
|   |   |   |---dao //mapper folder, interact with the database
|   |   |   |---filter  //filter folder, filter the request
|   |   |   |---listener  //listener folder, monitor the common application, session and request
|   |   |   |---model //entity folder
|   |   |   |---service //service folder, implememt service logic 
|   |   |   |---servlet //servlet folder, receive requests from frontend and response
|   |   |   |---utils // utils folder, encapsulate auxiliary utility classes
|   |   |   |---c3p0-config.xml //configuration file
|   |   |---WebContent //frontend code folder
|   |   |   |---admin //pages for the backend management
|   |   |   |---admin_center.jsp  //admin center page
|   |   |   |---css //style folder
|   |   |   |---fonts //font folder
|   |   |   |---footer.jsp  //footer of the main page
|   |   |   |---goods_cart.jsp  //goods cart page
|   |   |   |---goods_detail.jsp  //goods detail page
|   |   |   |---goods_list.jsp  //goods list page
|   |   |   |---goods_search.jsp  //goods serach page
|   |   |   |---header.jsp  //header of the main page
|   |   |   |---images  //images for homepage background, logo and payment
|   |   |   |---index.jsp //homepage
|   |   |   |---js  //javascript library
|   |   |   |---layer //pictures and style files
|   |   |   |---META-INF  //store meta information
|   |   |   |---order_list.jsp  //order list page
|   |   |   |---order_submit.jsp  //order submit page
|   |   |   |---order_success.jsp //order success page
|   |   |   |---page.jsp  //page hopping function
|   |   |   |---picture //picture folder for the book cover
|   |   |   |---user_center.jsp //user center page
|   |   |   |---user_login.jsp  //user login page
|   |   |   |---user_register.jsp //user register page
|   |   |   |---WEB-INF //library for dependencies
|   |   |---build //class files
```
