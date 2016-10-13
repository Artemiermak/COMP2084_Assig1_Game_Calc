<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment_1_Artem_Iermak._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container jumbotron">
        <h1 class="page-header">Game calculator</h1>
        <p>All fields are required. No ties or draws are allowed.</p>

        <!-- Forms to calculate game results. We use Bootstrap to build forms -->
        <div class="row">
            <!-- <><><><><><><><><><><><><><><><><><><><><>  
                <><><><><><><><>< Game 1  ><><><><><><><><> -->
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8"> 
                <h3 class="page-header">Game 1</h3>

                <asp:Label ID="ResultLabel" for="Result" runat="server" class="control-label col-sm-4">Result</asp:Label>
                <asp:RadioButtonList ID="Result" runat="server">
                    <asp:ListItem value="Win" text="Win" runat="server"></asp:ListItem>
                    <asp:ListItem value="Loss" text="Loss" runat="server"></asp:ListItem>
                </asp:RadioButtonList>
                <div class="form-group">

                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col..." -->


            <!-- <><><><><><><>< End of Game 1  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->

        </div>

        <!-- End of Forms to calculate game results.-->

    </section>
</asp:Content>
