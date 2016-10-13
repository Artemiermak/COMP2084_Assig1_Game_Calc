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
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 1</h3>;

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult1" for="radioResult1" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="radioResult1" runat="server">
                                <asp:ListItem value="Win" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="Loss" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <asp:Label ID="lblScored1" for="txtScored1" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtScored1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblAllowed1" for="txtAllowed1" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAllowed1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators1" for="txtSpectators1" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 1  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->

            <!-- <><><><><><><><><><><><><><><><><><><><><>  
                <><><><><><><><>< Game 2  ><><><><><><><><> -->
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 2</h3>;

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult2" for="radioResult2" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="radioResult2" runat="server" >
                                <asp:ListItem value="Win" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="Loss" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <asp:Label ID="lblScored2" for="txtScored2" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                    <div class="col-sm-8">
                         <asp:TextBox ID="txtScored2" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblAllowed2" for="txtAllowed2" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAllowed2" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators2" for="txtSpectators2" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators2" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 2  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


            <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>   
                <><><><><><><><>< Game 3  ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>  
                 <><><><><><><><><><><><><><><><><><><><><> <><><><><><><><><><><><><><><><><><><><><> -->
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 3</h3>;

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult3" for="radioResult3" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="radioResult3" runat="server">
                                <asp:ListItem value="Win" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="Loss" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <asp:Label ID="lblAllowed3" for="txtAllowed3" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAllowed3" runat="server" cssclass="form-control" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblScored3" for="txtScored3" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtScored3" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators3" for="txtSpectators3" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators3" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 3  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


             <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>   
                <><><><><><><><>< Game 4  ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>  
                 <><><><><><><><><><><><><><><><><><><><><> <><><><><><><><><><><><><><><><><><><><><> -->
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 3</h3>;

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblRadio4" for="radioResult4" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="radioResult4" runat="server">
                                <asp:ListItem value="Win" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="Loss" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <asp:Label ID="lblAllowed4" for="txtAllowed4" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAllowed4" runat="server" cssclass="form-control" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblScored4" for="txtScored4" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtScored4" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators4" for="txtSpectators4" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators4" runat="server" cssclass="form-control"></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 4  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


        </div>

        <!-- End of Forms to calculate game results.-->

    </section>
</asp:Content>
