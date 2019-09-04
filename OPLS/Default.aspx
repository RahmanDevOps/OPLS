<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OPLS._Default" %>




<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    

     


    <div class="menu" 
         style="font-family: 'Bodoni MT'; float: left; width: 27%; height: 449px; margin-left: 0px; color: #008000; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;" 
         align="left">
        
     <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 100%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px; margin-left: 95px;"> Services </h1>

         
         </div>

      <div class="toplinks"><a href="Dealers/Dealers.aspx" 
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Yarn Dealers</a></div>
     <div class="toplinks"><a href="Traders/Traders.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">
         Find Traders</a></div>
     <div class="toplinks"><a href="Peoples/FindPeoples.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Find Peoples</a></div>
     <div class="toplinks"><a href="UserRegister.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Registration</a></div>
     <div class="toplinks"><a href="UserLogin.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Login</a></div>
     <div class="toplinks"><a href="News.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">News / Info</a></div>
     <div class="toplinks"><a href="feedback.aspx"
                    style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Feedback</a></div>
    
    </div>
   
    <div class="nested" 
         
    
        style="font-family: Arial;float: left; width: 73%; height: 100%; background-color: #800000;">

         <div class="frame" 
         
              style="font-family: Arial;float: left; width: 100%; height: 100%; background-color: #000000;">

         <div class="about" 
         
                 
                 
                 
                 style="font-family: Arial;float: left; width: 64%; height: 307px; margin-left: 3px;">
             <br />

            

                 <div class="img_slider" 
                     
                 style="background-color: #FFFFFF; width: 99.3%; height: 270px; margin-top: -20px;">
                     
                     
                     <div id="sliderFrame">
               
        <div id="slider">   
            <img src="Slider/Dyed-yarn.jpg" alt="" />
            <img src="Slider/4.jpg" alt="" />
            <img src="Slider/5.jpg" alt="" />
            <img src="Slider/6.jpg" alt="" />
            <img src="Slider/7.jpg" alt="" />
            <img src="Slider/8.jpg" alt="" />
            
            
            
            </div>


    </div>
  </div>
                
                 <p style="font-size: medium" class="style1"> The system is an online application that can be accessed throughout 
                 the peoples of district , Yarn Dealers and Traders of the same district as well with proper login 
                 provided. This system can be specialy used as an application for the peoples to order the  yarn , 
                 cotton and textile online so that they can save their time and can get immediate response from the 
                 dealer.
                 </p>
    
         </div>

          <div class="nes2" 
         
                 style="font-family: Arial;float: left; width: 34%; height: 100%; margin-left: 0px;">



    <div class="camps" 
                  style="width: 105%; height: 500px; background-color: #385638;">

    <div class="headings" 
         
            style="background-color: #800000; border: 1px inset #000000; width: 99.5%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px; margin-left: 95px;"> 
            Recent News&nbsp; </h1>

         
         </div>


    <asp:Repeater ID="d1" runat="server">
    <HeaderTemplate>
        <ul>
        </ul>
    </HeaderTemplate>
    <ItemTemplate>
       
                        <div class="women" style=" padding:5px 5px 5px 5px;">
                            <span style="font-family: Times New Roman; font-size: small;">
                                " <%#Eval("News") %> "</span><br />
                               
                               <h1  align="right" style="text-align:right; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color:Yellow">
                               <%#Eval("Name") %> </h1><br />
                           
            </div>
        
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>






         </div>
        
        </div>
        </div>
    <br />


    




</asp:Content>
