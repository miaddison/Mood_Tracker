<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Mood_Tracker.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mood Tracker</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link href="css/bootstrap.min.css" rel="stylesheet" />  
    <script src="scripts/jquery-1.7.1.min.js"></script> 
    <script src="scripts/bootstrap.min.js"></script>
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <section id="container">
    <div class="jumbotron">
        <header><h1>Mood Tracker</h1></header>
    </div>
    <form id="form1" runat="server">
                 <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblDate" class="control-label">Date:</label>
                        <asp:Label ID="lblDate" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblHoursSleep" class="control-label">Last night's sleep (hours):</label>
                        <asp:Label ID="lblHoursSleep" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblDepressedMood" class="control-label">Today's most extreme depressed mood:</label>
                        <asp:Label ID="lblDepressedMood" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblElevatedMood" class="control-label">Today's most extreme elevated mood:</label>
                        <asp:Label ID="lblElevatedMood" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div> 
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblIrritability" class="control-label">Today's most extreme irritability:</label>
                        <asp:Label ID="lblIrritability" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblAnxiety" class="control-label">Today's most extreme anxiety:</label>
                        <asp:Label ID="lblAnxiety" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblPsychotic" class="control-label">Psychotic symptoms today:</label>
                        <asp:Label ID="lblPsychotic" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblTalkTherapy" class="control-label">Talk therapy today:</label>
                        <asp:Label ID="lblTalkTherapy" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>
                </div>
                     
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <label for="lblSuicidal" class="control-label">Suicidal idealation:</label>
                        <asp:Label ID="lblSuicidal" runat="server" Text="" CssClass="form-control-static"></asp:Label>                       
                    </div>                   
                </div>
                <div class="form-group">
                    <div class="col-sm-12 col-md-12">
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" TabIndex="9" CssClass="btn btn-primary" OnClick="btnConfirm_Click"/>
                        <asp:Button ID="btnModify" runat="server" Text="Modify" TabIndex="10" CssClass="btn btn-success" OnClick="btnModify_Click"/>
                    </div>
                    <div class="col-sm-12 col-md-12">   
                        <asp:Label ID="lblThanks" runat="server" Text="" CssClass="text-sucess"></asp:Label>
                    </div>                   
                </div>
    </form>
    </section>
</body>
</html>
