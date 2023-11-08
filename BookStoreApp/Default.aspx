<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BookStoreApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    
         <div class="container">
     <h1>Top Picks for you!</h1>
     <div class="book-covers">
         <div class="book-cover">
             <div class="book-name">Harry Potter</div>
             <img src="Images/HarryPotter.jpg" alt="Book 1">
             <!-- <div class="book-name">Harry Potter</div> -->
         </div>
         <div class="book-cover">
             <div class="book-name">Modern Indian History</div>
             <img src="Images/History.jpg" alt="Book 2">
             
         </div>
         <div class="book-cover">
             <div class="book-name">Love Story</div>
             <img src="Images/LoveStory.jpg" alt="Book 3">
            
         </div>
         <div class="book-cover">
             <div class="book-name">Power of Subconcious Mind</div>
             <img src="Images/Pcm.jpg" alt="Book 4">
             
         </div>
         <div class="book-cover">
             <div class="book-name">Sherlock Homles</div>
             <img src="Images/Sherlock.jpg" alt="Book 5">
           
         </div>
         <div class="book-cover">
             <div class="book-name">Wings of Fire</div>
             <img src="Images/WingsofFire.jpg" alt="Book 6">
             
         </div>
         <div class="book-cover">
             <div class="book-name">Rich Dad Poor Dad</div>
             <img src="Images/RDPD.jpg" alt="Book 7">
             
         </div>
         <div class="book-cover">
             <div class="book-name">Those Eyes</div>
             <img src="Images/Horror.jpg" alt="Book 8">
            
         </div>
     </div>
 </div>
    </main>

</asp:Content>


<%--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Covers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: whitesmoke;
        }
    
        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: flex-end;
        }
    
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
    
        .navbar a:hover {
            /* background-color: #ffffff; */
            color: rgb(30, 180, 255);
        }
    
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            align-items: center;
        }
    
        .book-cover {
        width: 250px;
        height: 350px;
        margin: 20px;
        display: inline-block;
       
        text-align: center;
        overflow: hidden;
        position: relative;
        transition: transform 0.3s ease; /* Add a transition for the transform property */
    }

    .book-cover img {
        max-width: 100%;
        max-height: 100%;
        object-fit: contain;
       
        
    }

    .book-cover:hover {
        transform: scale(1.1); /* Add a scale transform on hover */
    }

    .book-name {
        padding: 10px 0; /* Add space below the image for the book name */
        font-weight: bold;
        transition: color 0.3s ease; /* Add a transition for the color property */
    }

    .book-cover:hover .book-name {
        color: #007bff; /* Change the color of the book name on hover */
    }

    h1 {
            font-family: "Times New Roman", serif; /* Change the font family */
            margin-left: 30px;
            

        }

        #logo {
            width: 9%;
            position: absolute;
            top: 0;
            left: 0;
            margin: 7px;
        }
       
</style>


  
</head>
<body>
    <div class="navbar">

        <img id="logo" src="logo2.png" />
        <a href="#">Home</a>
        <a href="#">Books</a>
        <a href="~/Login.aspx">Login </a>
        <a href="#">Contact </a>
      
        
    </div>

    <div class="container">
        <h1>Top Picks for you!</h1>
        <div class="book-covers">
            <div class="book-cover">
                <div class="book-name">Harry Potter</div>
                <img src="Images/HarryPotter.jpg" alt="Book 1">
                <!-- <div class="book-name">Harry Potter</div> -->
            </div>
            <div class="book-cover">
                <div class="book-name">Modern Indian History</div>
                <img src="Images/History.jpg" alt="Book 2">
                
            </div>
            <div class="book-cover">
                <div class="book-name">Love Story</div>
                <img src="Images/LoveStory.jpg" alt="Book 3">
               
            </div>
            <div class="book-cover">
                <div class="book-name">Power of Subconcious Mind</div>
                <img src="Images/Pcm.jpg" alt="Book 4">
                
            </div>
            <div class="book-cover">
                <div class="book-name">Sherlock Homles</div>
                <img src="Images/Sherlock.jpg" alt="Book 5">
              
            </div>
            <div class="book-cover">
                <div class="book-name">Wings of Fire</div>
                <img src="Images/WingsofFire.jpg" alt="Book 6">
                
            </div>
            <div class="book-cover">
                <div class="book-name">Rich Dad Poor Dad</div>
                <img src="Images/RDPD.jpg" alt="Book 7">
                
            </div>
            <div class="book-cover">
                <div class="book-name">Those Eyes</div>
                <img src="Images/Horror.jpg" alt="Book 8">
               
            </div>
        </div>
    </div>
</body>
</html>
--%>

