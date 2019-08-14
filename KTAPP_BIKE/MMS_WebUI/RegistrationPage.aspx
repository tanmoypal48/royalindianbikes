<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="MMS_WebUI.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Branch Admin Registration Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 569px;
           margin-left:auto;
           margin-right:auto;

        }
        .auto-style2 {
            width: 208px;
            background-color: #CCCCFF;
        }
        .auto-style5 {
            background-color: #CCCCFF;
        }
        .auto-style6 {
            font-weight: normal;
            text-align: center;
            color: #669999;
            background-color: #669999;
        }
        .auto-style7 {
            color: #FF3300;
        }
        .auto-style8 {
            background-color: #CCCCFF;
            height: 36px;
            width: 184px;
        }
        .auto-style9 {
            width: 208px;
            height: 36px;
            background-color: #CCCCFF;
        }
        .auto-style10 {
            background-color: #CCCCFF;
            height: 34px;
            width: 184px;
        }
        .auto-style11 {
            width: 208px;
            height: 34px;
            background-color: #CCCCFF;
        }
        .auto-style12 {
            background-color: #CCCCFF;
            height: 35px;
            width: 184px;
        }
        .auto-style13 {
            width: 208px;
            height: 35px;
            background-color: #CCCCFF;
        }
        .auto-style14 {
            background-color: #CCCCFF;
            width: 184px;
        }
        .auto-style15 {
            width: 65px;
        }
    </style>
</head>
<body>  
    <h1 class="auto-style6"> <span class="auto-style7"><strong style="background-color: #669999">Registration</strong></span><strong style="color: #3333FF; background-color: #669999"> </strong> </h1>
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1" >  
                <tr>  
                    <td class="auto-style8">First Name :</td>  
                    <td class="auto-style9">  
                        <br /><asp:TextBox ID="FName" runat="server" Width="200px"></asp:TextBox><br /> 
                        <asp:RequiredFieldValidator ID="user" runat="server" ControlToValidate="FName"   
                            ErrorMessage="Please enter a First name" ForeColor="Red"></asp:RequiredFieldValidator> 
                    </td>  

 
               </tr>
                <tr>  
                    <td class="auto-style8">Last Name :</td>  
                    <td class="auto-style9">  
                       <br /> <asp:TextBox ID="LName" runat="server" Width="200px"></asp:TextBox>  <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LName"   
                            ErrorMessage="Please enter a Last name" ForeColor="Red"></asp:RequiredFieldValidator> 
                    
                    </td>  
  
               </tr>  
                <tr>  
                    <td class="auto-style10">Present Address:</td>  
                     <td class="auto-style11"><br /> <asp:TextBox ID="PresentAddress" runat="server" Width="200px"></asp:TextBox><br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PresentAddress"   
                            ErrorMessage="Please enter valid address" ForeColor="Red"></asp:RequiredFieldValidator> 
                    </td>
                     </tr>
                 <tr>  
                    <td class="auto-style12">Permanent Address:</td>  
                     <td class="auto-style13"> <br /> <asp:TextBox ID="PermanentAddress" runat="server" Width="200px"></asp:TextBox><br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PermanentAddress"   
                            ErrorMessage="Please enter valid address" ForeColor="Red"></asp:RequiredFieldValidator> 
               </td>
                   
                </tr>  
                <tr>  
                    <td class="auto-style8">Password</td>  
                    <td class="auto-style9">  
                        <br /> <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="200px"></asp:TextBox><br />  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password"   
                            ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator> 
               
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style12">State</td>  
                    <td class="auto-style13">  
                      <asp:DropDownList ID="StateDropDownList" runat="server">  
                            <asp:ListItem Text="Beijing" Value="Beijing"></asp:ListItem>  
                            <asp:ListItem  Text="Telangana" Value="Telangana" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="New York" Value="New York"></asp:ListItem>  
                        </asp:DropDownList> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="StateDropDownList"   
                            ErrorMessage="Please choose a State" ForeColor="Red"></asp:RequiredFieldValidator> 
               
                    </td>  
                </tr>
                <tr>  
                    <td class="auto-style8">Country</td>  
                    <td class="auto-style9">  
                       <asp:DropDownList ID="CountryDropDownList" runat="server">  
                            <asp:ListItem Text="USA" Value="USA" ></asp:ListItem>  
                            <asp:ListItem Text="India" Value="India" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="China" Value="China"></asp:ListItem>  
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CountryDropDownList"   
                            ErrorMessage="Please choose a Country" ForeColor="Red"></asp:RequiredFieldValidator> 
               
                    </td>  
                </tr>  
               
                <tr>  
                    <td class="auto-style8">Email Address:</td>  
                    <td class="auto-style9">  
                      <br /> <br />  <asp:TextBox ID="Email" runat="server" Width="200px" Height="30px" style="margin-top: 0px"></asp:TextBox>  <br />
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator> <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ControlToValidate="Email" ErrorMessage="Please enter valid email address"></asp:RequiredFieldValidator> 
               
                    </td>  
                </tr>  
                  <tr>  
                    <td class="auto-style14">Engine category</td>  
                    <td class="auto-style2">  
                        <asp:RadioButtonList ID="EngineList" runat="server"  Width="200px">  
                            <asp:ListItem Selected="True">350cc</asp:ListItem> <asp:ListItem>500cc</asp:ListItem> <asp:ListItem>650cc</asp:ListItem> 
                        </asp:RadioButtonList>
                        
                    </td>  
               </tr>  
               <tr>  
                    <td class="auto-style14">Mybikes</td>  
                    <td class="auto-style2">
                     <asp:RadioButtonList ID="MyBikes" runat="server" Width="200px">  
                            <asp:ListItem Selected="True">Royal Indian bullet</asp:ListItem>  
                            <asp:ListItem>Royal Indian Classic</asp:ListItem>                      
                         <asp:ListItem>Royal Indian Thunderbird</asp:ListItem> 
                         <asp:ListItem>Royal Indian x series</asp:ListItem> 
                        </asp:RadioButtonList>
                       
                    </td>  
               </tr>  
                 <tr>  
                    <td class="auto-style8">Contact Number:</td>  
                    <td class="auto-style9">  
                      <br />  <asp:TextBox ID="Number" Width="200px" runat="server" OnTextChanged="Number_TextChanged"></asp:TextBox>  <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Number"   
                            ErrorMessage="Please enter valid mobile number" ForeColor="Red"></asp:RequiredFieldValidator> 
                 </td>  
                     
                </tr> 
                 <tr>  
                    <td class="auto-style8">Date Of Birth:</td>  
                    <td class="auto-style9">  
                       <br /> <asp:TextBox ID="Dob" Width="200px" runat="server" OnTextChanged="Dob_TextChanged"></asp:TextBox>  <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Dob"   
                            ErrorMessage="Please enter in dd/mm/yyyy format" ForeColor="Red"></asp:RequiredFieldValidator> <br />
                        <asp:Label ID="LblDateError" Visible="false" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                  </td> 
                     
                     
                </tr> 
                 <tr>  
                    <td class="auto-style8">Identification Type</td>  
                    <td class="auto-style9">  
                      <br />  <asp:TextBox ID="IdType" Width="200px" runat="server"></asp:TextBox>  <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="IDType"   
                            ErrorMessage="Enter valid ID Type: GMV,RD,PAN" ForeColor="Red"></asp:RequiredFieldValidator> 
               
                    </td>  
                </tr> 

                <tr>  
                    <td style="text-align:center" class="auto-style5" colspan="2">  
                        <br />
                        <br />
                        <asp:Button ID="BtnSubmit" runat="server" Text="Register" OnClick="BtnSubmit_Click" Width="113px" Height="43px" />  <br />
                    </td>
                </tr>  
            </table>  
        </div>  
    </form>  
</body> 
</html>
