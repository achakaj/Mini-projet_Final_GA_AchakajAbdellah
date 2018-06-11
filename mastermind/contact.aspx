<%@ Page Title="" Language="C#" MasterPageFile="~/mastermind.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="mastermind.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextBox1{border-radius: 10px;}
        table tr{ padding:20px;}
    .style1
    {
            width: 159px;
             padding:15px;
        }
        .style2
        {
            width: 159px;
            height: 29px;
        }
        .style3
        {
            height: 29px;
            width: 22px;
        }
        .style4
        {
            width: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class=" container-fluid">
	<div class="row">
    <div class="col-lg-12"> 
           <h1 style="color:red; ">contact us</h1>

    <table class="w-100" style="border-radius: 10px;
    background-color: transparent; !important ; margin-left:26%;">
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
    
  </div>
</div>



</asp:Content>
