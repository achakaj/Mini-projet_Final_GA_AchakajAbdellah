<%@ Page Title="" Language="C#" MasterPageFile="~/mastermind.Master" AutoEventWireup="true" CodeBehind="regester.aspx.cs" Inherits="mastermind.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .style1
        {
            width: 50%;
            margin-left:20%;
            
        }
        .style2
        {
            width: 50px;
        }
        .style3
        {
            width: 311px;
            height: 154px;
        }
        .style2 button1{margin-left:20px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container-fluid">
	<div class="row">
    <div class="col-lg-12"> 
<h3 style="color:Red; text-align:center; width:400px; margin-left:30%;">Fill out the following form if you intend to attend the meeting</h3>
<p style="border-radius: 10px;
    background: #D3D3D3; text-align: left; padding:10px;">Only 45 people will be selected to come with us. They will be selected according to the answers.
 Sorry, but the amount of rooms available in the hotel is limited. 
 The people who will be chosen will spend Friday, Saturday and Sunday at a hotel in Morocco. They are close to me.
  They will be a chance to meet successful people and sit with them. 
  Every day we meet from morning to night for a group breakfast, then enjoy anything you want, talk and discuss with others.
   After lunch, we meet in a meeting room for 3 hours. A question you can ask is there are 15 people who add up to the rest Attendees are not beginners and will be chosen very carefully, meaning you will be sitting with people who are hard to find elsewhere or even bring them together in one place.</p>
   <table class="style1" style="/*border: 5px solid #D3D3D3;*/ border-radius: 10px;
    background-color: transparent; !important;">
        <tr>
            <td class="style2">
                Full name :</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                The city where you live:</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Telephone number:</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-mail:</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                how old are you:</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Why do you want to attend?</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                If I asked you what your achievements in life and what you aspire to in the next 
                five years</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                From the characters that you know personally from those around me or my friends 
                who always you see me whith them, write their name. (If you know someone 
                personally after sending the demand, please tell them to support your demand. If 
                you are really a qualified person, you will do so and the chance that you will 
                be chosen from 45 will be too big.) He knows you means he knows you and you know 
                him well and he will not answer you diplomatically. All places have already been 
                booked, does not mean that you are a friend of the astronomy of precedence, but 
                is respected all will fill this form all that is in your opinion that one of my 
                close associates you have more points and thanks for understanding it)</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Are you ready to travel to Casablanca, Rabat or Marrakech in case you were 
                chosen</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="YES" /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="NO" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                What price do you consider suitable to attend such an event and meet with 59 
                people for 2 nights and 3 days in a hotel and everything is paid, room, 
                breakfast, lunch, dinner and everything</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:RadioButton ID="RadioButton3" runat="server" 
                    Text="I think it should be free" /><br />
                <asp:RadioButton ID="RadioButton4" runat="server" 
                    Text="Between 3000 and 5000 dirhams" /><br />
                <asp:RadioButton ID="RadioButton5" runat="server" 
                    Text="Between 5000 and 8000 dirhams" /><br />
                <asp:RadioButton ID="RadioButton6" runat="server" 
                    Text="Between 8000 and 10,000 dirhams" /><br />
                <asp:RadioButton ID="RadioButton7" runat="server" 
                    Text="I do not care about the price I am willing to pay any price for that I bring with you" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                What are the problems you are currently experiencing and that are a barrier in 
                your life or in front of your business which does not leave you to grow and move 
                to the level of the pro and how we can help you</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox9" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <p style="border-radius: 10px;
    background: #D3D3D3;">The event will not benefit you if you are a beginner and you have never achieved 
                anything, you will not be accepted and there is nothing to benefit from. It is 
                better not to fill this form if you are a beginner, and the next event will be 
                in October, the number of attendees will be 1200 people, 45 people there A lot 
                of conditions for their selection and we apologize for that because the places 
                are limited and the requests will be many.</p></td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Send" Width="200px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </div>	
    
  </div>
</div>

</asp:Content>
