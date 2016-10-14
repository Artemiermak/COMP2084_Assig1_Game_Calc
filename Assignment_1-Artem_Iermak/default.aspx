<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment_1_Artem_Iermak._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container jumbotron">
        <h1 class="page-header">Game calculator</h1>
        <p class="text-warning">All fields are required. No ties or draws are allowed.</p>

        <!-- Forms to calculate game results. We use Bootstrap to build forms -->
        <div class="row">
            <!-- <><><><><><><><><><><><><><><><><><><><><>  
                <><><><><><><><>< Game 1  ><><><><><><><><> -->
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
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
                        <asp:TextBox ID="txtScored1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblAllowed1" for="txtAllowed1" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                    <div class="col-sm-8">
                       <asp:TextBox ID="txtAllowed1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>

                       <!-- ********** Requiered validation *********** -->
                       <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" 
                            runat="server" 
                            ErrorMessage="Required"
                            cssclass="alert-danger"
                            ControlToValidate="txtAllowed1"
                            Display="Dynamic" >
                        </asp:RequiredFieldValidator>

                        <!-- ********** Min - Max validation *********** -->
                        <asp:RangeValidator 
                            ID="RangeValidator1" 
                            runat="server" 
                            ErrorMessage="Input should be 0 or higher"
                            cssclass="alert-danger"
                            ControlToValidate="txtAllowed1"
                            MaximumValue="999999999"
                            MinimumValue="0"
                            Type="Integer" 
                            Display="Dynamic">
                        </asp:RangeValidator>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators1" for="txtSpectators1" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <!-- [][][][][][][][][][][][][][][][][][][][][][][][][][][][]
                                           Alert message 
                    [][][][][][][][][][][][][][][][][][][][][][][][][][][][][] -->

                    <!-- <div class="col-sm-12">
                        <asp:Label ID="lblAlert1" runat="server" Text="Label" CssClass="alert alert-info"></asp:Label>
                    </div> -->

                <!-- [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][] -->

            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 1  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->

            <!-- <><><><><><><><><><><><><><><><><><><><><>  
                <><><><><><><><>< Game 2  ><><><><><><><><> -->
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
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
                         <asp:TextBox ID="txtScored2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblAllowed2" for="txtAllowed2" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAllowed2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators2" for="txtSpectators2" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 2  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


            <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>   
                <><><><><><><><>< Game 3  ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>  
                 <><><><><><><><><><><><><><><><><><><><><> <><><><><><><><><><><><><><><><><><><><><> -->
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
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
                        <asp:TextBox ID="txtAllowed3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblScored3" for="txtScored3" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtScored3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators3" for="txtSpectators3" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 3  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


             <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>   
                <><><><><><><><>< Game 4  ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>  
                 <><><><><><><><><><><><><><><><><><><><><> <><><><><><><><><><><><><><><><><><><><><> -->
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 4</h3>;

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
                        <asp:TextBox ID="txtAllowed4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblScored4" for="txtScored4" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtScored4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <asp:Label ID="lblSpectators4" for="txtSpectators4" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSpectators4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                    </div>
                </div> <!-- End of class="form-group" -->
            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
            <!-- <><><><><><><>< End of Game 4  ><><><><><><><><> 
                 <><><><><><><><><><><><><><><><><><><><><><><><>-->


        </div> <!-- end of class="form-group" -->
        <!-- End of Forms to calculate game results.-->
        <asp:Button ID="btnCalculate" runat="server" Text="Summary" CssClass="btn btn-default col-sm-offset-2" OnClick="btnCalculate_Click" />

        <!-- /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            /\/\/\/\/\/\/\/\/\/\/\ Calculated information section /\/\/\/\/\/\/\/\/\/\/\/\ 
            /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\-->
        <div class="jumbotron col-sm-8">
            <h2 class="page-header">Results of games</h2>
            <asp:Label ID="lblNumberOfGamesWon" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblNumberOfGamesLost" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblWinningPercent" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblPointsScored" runat="server" Text=""></asp:Label>

            <asp:Label ID="lblPointsAllowed" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblPointDifferential" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTotalAttendance" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblAverageAttendance" runat="server" Text=""></asp:Label>
        </div>

        <!-- /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ -->
    </section>
</asp:Content>
