<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mood_Tracker.WebForm1"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mood Tracker</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link href="css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="css/main.css" rel="stylesheet" />
    <script src="scripts/jquery-1.7.1.min.js"></script> 
    <script src="scripts/bootstrap.min.js"></script>
    
    <style>
    </style>
</head>
<body>
    <section id="container">
    <div class="jumbotron">
        <header><h1>Mood Tracker</h1></header>
    </div>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtHoursSleep">
                  <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <div class="col-sm-1 col-md-1">
                            <asp:LinkButton ID="btnDateBack" runat="server" CssClass="btn" OnClick="btnDateBack_Click" CausesValidation="false" ValidationGroup="date">
                                <span class="glyphicon glyphicon-arrow-left"></span>
                            </asp:LinkButton>
                        </div>
                        <div class="col-sm-2 col-md-2">
                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" ValidationGroup="date"></asp:TextBox>
                        </div>
                        <div class="col-sm-1 col-md-1">
                            <asp:LinkButton ID="btnDateForward" runat="server" CssClass="btn" OnClick="btnDateForward_Click" CausesValidation="true" ValidationGroup="date">
                                <span class="glyphicon glyphicon-arrow-right"></span>
                            </asp:LinkButton>
                        </div>
                        <asp:CompareValidator ID="cvDate" runat="server" ErrorMessage="You cannot enter future values" CssClass="alert-danger" Operator="LessThan" Type="Date" ControlToValidate="txtDate" ControlToCompare="txtTodayDate" ValidationGroup="date"></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="revDate" runat="server" ErrorMessage="Not a valid date" ControlToValidate="txtDate" ValidationExpression="^([0]?[1-9]|[1][0-2])[./-]([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0-9]{4}|[0-9]{2})$" CssClass="alert-danger"></asp:RegularExpressionValidator>                  </div>
                        <asp:TextBox ID="txtTodayDate" runat="server" type="hidden"></asp:TextBox>
                  </div>
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                            <label for="txtHoursSleep" class="control-label">Last night's sleep (hours):</label>
                            <asp:TextBox ID="txtHoursSleep" runat="server" TabIndex="1" CssClass="form-control" Width="250px" style="margin-left: auto; margin-right: auto;"></asp:TextBox>
                            <asp:RangeValidator ID="sleepValidator" runat="server" ControlToValidate="txtHoursSleep" CssClass="alert-danger" ErrorMessage="Must be between 0 and 24 hrs" MaximumValue="24" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="sleepRequired" runat="server" ControlToValidate="txtHoursSleep" CssClass="alert-danger" ErrorMessage="You must enter hours of Sleep" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblDepressedMood" class="control-label">Today's most extreme depressed mood:</label>
                        <asp:RadioButtonList ID="rblDepressedMood" runat="server" RepeatDirection="Horizontal" CssClass="radio4" TabIndex="2" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Mild</asp:ListItem>
                            <asp:ListItem>Moderate</asp:ListItem>
                            <asp:ListItem>Severe</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblElevatedMood" class="control-label">Today's most extreme elevated mood:</label>
                        <asp:RadioButtonList ID="rblElevatedMood" runat="server" RepeatDirection="Horizontal" CssClass="radio4" TabIndex="3" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Mild</asp:ListItem>
                            <asp:ListItem>Moderate</asp:ListItem>
                            <asp:ListItem>Severe</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div> 
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblIrritability" class="control-label">Today's most extreme irritability:</label>
                        <asp:RadioButtonList ID="rblIrritability" runat="server" RepeatDirection="Horizontal" CssClass="radio4" TabIndex="4" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Mild</asp:ListItem>
                            <asp:ListItem>Moderate</asp:ListItem>
                            <asp:ListItem>Severe</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblAnxiety" class="control-label">Today's most extreme anxiety:</label>
                        <asp:RadioButtonList ID="rblAnxiety" runat="server" RepeatDirection="Horizontal" CssClass="radio4" TabIndex="5" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Mild</asp:ListItem>
                            <asp:ListItem>Moderate</asp:ListItem>
                            <asp:ListItem>Severe</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblPsychotic" class="control-label">Psychotic symptoms today:</label>
                        <asp:RadioButtonList ID="rblPsychotic" runat="server" RepeatDirection="Horizontal" CssClass="radio2" TabIndex="6" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblTalkTherapy" class="control-label">Talk therapy today:</label>
                        <asp:RadioButtonList ID="rblTalkTherapy" runat="server" RepeatDirection="Horizontal" CssClass="radio2" TabIndex="7" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="rblSuicidal" class="control-label">Suicidal idealation:</label>
                        <asp:RadioButtonList ID="rblSuicidal" runat="server" RepeatDirection="Horizontal" CssClass="radio2" TabIndex="8" style="margin-left: auto; margin-right: auto;">
                            <asp:ListItem Selected="True">No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" TabIndex="9" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" TabIndex="10" CssClass="btn btn-success" OnClick="btnClear_Click" />
                        <asp:Label ID="lblThanks" runat="server" CssClass=label-success></asp:Label>
                    </div>                   
                </div>
    </form>
        </section>
    </body>
 </html>

