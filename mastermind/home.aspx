<%@ Page Title="" Language="C#" MasterPageFile="~/mastermind.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="mastermind.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.style1{padding:50px;}
.style2{padding:10px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class=" first-part container-fluid">
	<div class="row bgfirstpart">
       <div class="col-lg-6 col-md-6"> 
            <img class="img-responsive" src="img/sopa.jpg" style="width: 670px; height: 632px; border-radius: 10px;">    
       </div>
    <div class="col-lg-6 col-md-6">
    	<div class="well">
          
        <div class="well" style="letter-spacing: 10px;">
          <div>
          	 <p style="font-family:  Comic Sans MS"><span style="font-family:  Comic Sans MS ; font-size: 30px;">prepare for</span><br><span style="font-family:  Comic Sans MS; font-size: 40px;">mastermind</samp><br><samp style="font-family:  Comic Sans MS ; font-size: 40px;">meetup</samp><br><span style="font-family:  Comic Sans MS ; font-size: 30px; color: green;">2018</span><br><span style="font-family:  Comic Sans MS ; font-size: 30px;">merrakech</span><br><span style="font-family:  Comic Sans MS">sept 1st,3rd</span></p>
          </div>
        </div>
        <div class="well">
          <button type="button" class="btn btn-success" style=" width: 200px;">More info</button>
           
        </div>
        <div class="well">
          
           <button type="button" class="btn btn-success" style=" width: 200px; margin-top: 10px;">Regester Now</button>
        </div>
        <div class="well" style="letter-spacing: 10px;">
           <p style="font-family:  Comic Sans MS ; font-size: 40px;"><span style="font-family:  Comic Sans MS ; font-size: 30px;" >the meetup will start in:</p><br>
           <p id="lmagana" style="font-size: 30px;">164d 15H 39m 35s</p>      
           </div>
        <br>
        
		
	</div>	
    
  </div>
</div>


<br>




<div class=" container-fluid second-part">
	<div class="row">
    <div class="col-lg-6 col-md-6" style="text-align: center; word-wrap: break-word;"> 
      <h3 style="text-align: center; font-family:  Comic Sans MS">first meetup comp in marrakech</h3>
      <p style="font-size: 20px; text-align: justify; padding-left: 20px; ">Only 45 people will be selected to come with us. They will be selected according to the answers. Sorry, but the amount of rooms available in the hotel is limited. The people who will be chosen will spend Friday, Saturday and Sunday at a hotel in Morocco. They are close to me. They will be a chance to meet successful people and sit with them. Every day we meet from morning to night for a group breakfast, then enjoy anything you want, talk and discuss with others, then a lunch and then meet in a meeting room for 3 hours. A question you can ask is there are 15 people who add up to the rest Attendees are not beginners and will be chosen very carefully, meaning you will be sitting with people who are hard to find elsewhere or even bring them together in one place</p>    
	  <p style="font-size: 20px; text-align: justify; padding-left: 30px; "></p> 
    </div>
    <div class="col-lg-6 col-md-6">
        <div class="well">
          <h1 style="font-size: 90px; color: #1E90FF;">The<br><span style="color: black;">master</span>mind<br>Meetup</h1>
        </div>
		
	</div>	
    
  </div>
</div>




<br>


<div class="container-fluid">
	<div class="row">
    <div class="col-lg-6 col-md-6"> 
         <img class="img-responsive" src="img/meeting.jpg" style="width: 670px; height: 500px; border-radius: 10px;">
    </div>
    <div class="col-lg-6 col-md-6">
    	<div class="well">
          <div>
          	 <h4>Questions</h4>
             <h1>FAQ</h1>
             
          </div>
        </div>
        <div class="well">
          <div style="border: 2px  black; border-radius: 20px; padding: 10px; margin-bottom: 10px;  background-color: #A9A9A9;">
          	 <h6>who is the speekers in the meething?</h6>
             <p>the principal speekers are simo life, bilal daifi, mohamed id yahia.</p>
          </div>
        </div>
        <div class="well">
          <div style="border: 2px  black; border-radius: 20px; padding: 10px;margin-bottom: 10px;  background-color: #A9A9A9;">
          	 <h6>can any one attend the meething?</h6>
             <p>please Fill out the form in page regester then we will choose the masters.</p>
             
          </div>
        </div>
        <div class="well">
          <div style="border: 2px  black; border-radius: 20px; padding: 10px; margin-bottom: 10px; background-color: #A9A9A9;">
             <h6>what is the price of beeing there?</h6>
             <p> the price will be related to conditions.</p>
          </div>       
           </div>
        <div class="well">
          <div style="border: 2px  black; border-radius: 20px; padding: 10px;margin-bottom: 10px;  background-color: #A9A9A9;">
             <h6>what about location?</h6>
             <p>casa or merrakech or rabat. (we will deside later).</p>
          </div>
        </div><br>
		
	</div>	
    
  </div>
</div>


<!--slide-->
<div class="slide height-slide">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/mastermind.png" alt="First slide" style"width:100%; !important;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/mastermind2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/gyb.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>



<!--our team-->

<div class="container section-ourTeam">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12 ourTeam-hedding text-center">
			<h1>Our Team</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12 col-lg-4">
			<div class="row ourTeam-box light text-center">
				<div class="col-md-12 section1">
					<img src="img/bilal.jpg" class="img-circle">
				</div>
				<div class="col-md-12 section2">	
					<p>Bilal Daifi</p>
					<h3>Exper on shopify.</h3>
				</div>
				<div class="col-md-12 section3">
					<a href="https://www.instagram.com/bilaldaifi/"><i class="fa fa-instagram" aria-hidden="true" style="width:20px;height:20px;"></i></a>
					
				</div>
			</div>
		</div>
		<div class="col-md-12 col-sm-12 col-xs-12 col-lg-4">
			<div class="row ourTeam-box dark text-center">
				<div class="col-md-12 section1">
					<img src="img/simo1.jpg" class="img-circle">
				</div>
				<div class="col-md-12 section2">
					<p>Simo Baabbit (simolife)</p>
					<h3>Exper on Amazon FBA, CPA, Click Banck and others..</h3>
				</div>
				<div class="col-md-12 section3">
					<a href="https://www.instagram.com/simolifedotcom/"><i class="fa fa-instagram" aria-hidden="true" style="width:20px;height:20px;"></i></a>
					
				</div>
			</div>
		</div>
		<div class="col-md-12 col-sm-12 col-xs-12 col-lg-4">
			<div class="row ourTeam-box light text-center">
				<div class="col-md-12 section1">
					<img src="img/idyahia.jpg" class="img-circle">
				</div>
				<div class="col-md-12 section2">
                     <p>Mohamed id yahia</p>
					<h3>marketer and affiliate</h3>
					
				</div>
				<div class="col-md-12 section3">
					<a href="https://www.instagram.com/idyahia/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
		
	</div><br><br><br><br>  
	<p style="text-align: center; margin-bottom: 40px;color: orangered;">The event will not benefit you if you are a beginner and you have never achieved anything, you will not be accepted and there is nothing to benefit from. It is better not to fill this form if you are a beginner, and the next event will be in December, the number of attendees will be 1200 people, 45 people there Many conditions for their selection and we apologize for that because the places are limited.</p>
</div>








<div class="container-fluid" >
	<h1>our partner</h1>
	<div class="row">
        <div class="col-lg-6 col-md-6"> 
          	
            <p>Sample Thanks to our partner for supporting this meeting for theire helpfull actions. <br><br> __ simo life</p>
        </div>
        <div class="col-lg-6 col-md-6" style="font-size: 90px;">
            <div class="well">
               <i class="fa fa-cc-stripe" aria-hidden="true"></i>
	           <i class="fa fa-cc-visa" aria-hidden="true"></i>
	           <i class="fa fa-cc-discover" aria-hidden="true"></i>
	           <i class="fa fa-envira" aria-hidden="true"></i>
	           
            </div>
	     	<div class="well">
                <i class="fa fa-contao" aria-hidden="true"></i>
	            <i class="fa fa-cc-paypal" aria-hidden="true" style="margin-left: 40px;"></i>
	            
            </div>
	    </div>	
    
     </div>
</div>








<div class="container-fluid">
	<h1 style="text-align: center;">Cantact and <span style="color: red;">Location</span></h1>
	<div class="row">

    <div class="col-lg-4 col-md-4"> 
    	
         <table class="w-100" style="border-radius: 10px;
    background-color: transparent; !important;">
        <tr>
            <td class="style1">
                Nom:</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Email:</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Message:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" Text="send" Width="54px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </div>
    <div class="col-lg-4 col-md-4">


        <div id="googleMap" style="width:100%;height:400px;"></div>

            <script>
                   function myMap() {
                         var mapProp= {
                         center:new google.maps.LatLng(51.508742,-0.120850),
                         zoom:5,
                         };
                         var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
                         }
            </script>

               <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASV965G2D5FQT0RU_U5Nbtn7B82XG2Pds&callback=myMap"></script>
       </div>
       
	<div class="col-lg-4 col-md-4"> 
    	           <br>
    	           <h2>Note about location:</h2>
                   <p> the location of meetup will be in one of those cities Casabalanca, Merrakech, Rabat. we will deside wich city after choosing the masterminders. </p> 
					<i class="fa fa-map-marker" aria-hidden="true" style="font-size: 80px;"></i>anywhere in morocco.(we will let you know the location later by mail)<br>
	               <i class="fa fa-phone" aria-hidden="true"  style="font-size: 80px;"> </i> Tel 06666568956 . <br>
	               <i class="fa fa-envelope" aria-hidden="true" style="font-size: 80px;"> </i> simolife@gmail.com. <br>

    </div>
    
  </div>
</div><br>
    </span></span>
</asp:Content>
