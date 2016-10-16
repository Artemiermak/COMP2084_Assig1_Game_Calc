<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment_1_Artem_Iermak._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container jumbotron">
        <h1 class="page-header">Game calculator</h1>
        <p class="text-warning">All fields are required. No ties or draws are  allowed.</p>

        <!-- Forms to calculate game results. We use Bootstrap to build forms -->
        <div class="row">

 <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><>< <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
 <><><><><><><><><><><><><><><><><><><><><> ----- GAME 1 ------ <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>-->  

            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 1</h3>

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult1" for="radioResult1" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="radioResult1" runat="server">
                                <asp:ListItem value="1" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="0" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>

                            <!-- ********** Requiered validation *********** -->
                           <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator13" 
                                runat="server" 
                                ErrorMessage="Result required (game 1)"
                                cssclass="alert-danger"
                                ControlToValidate="radioResult1"
                                Display="Dynamic" ></asp:RequiredFieldValidator>

                        </div> <!-- End of class="col-sm-6" -->
                    </div> <!-- End of class="radio" -->
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblScored1" for="txtScored1" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                        <div class="col-sm-6">
                           <asp:TextBox ID="txtScored1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>
                        </div>
                        <div class="col-sm-1">
                           <!-- ********** Requiered validation *********** -->
                           <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator1" 
                                runat="server" 
                                ErrorMessage="Scored for game 1 is required"
                                cssclass="alert-danger"
                                ControlToValidate="txtScored1"
                                Display="Dynamic" >*</asp:RequiredFieldValidator>

                            <!-- ********** Min - Max validation *********** -->
                            <asp:RangeValidator 
                                ID="RangeValidator1" 
                                runat="server" 
                                ErrorMessage="Scored for game 1 should be 0 or higher"
                                cssclass="alert-danger"
                                ControlToValidate="txtScored1"
                                MaximumValue="999999999"
                                MinimumValue="0"
                                Type="Integer" 
                                Display="Dynamic">*</asp:RangeValidator>
                        </div> <!-- End of class="col" -->

                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblAllowed1" for="txtAllowed1" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                        <div class="col-sm-6">
                           <asp:TextBox ID="txtAllowed1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>
                        </div>
                            <div class="col-sm-1">
                               <!-- ********** Requiered validation *********** -->
                               <asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator3" 
                                    runat="server" 
                                    ErrorMessage="Allowed for game 1 is required"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtAllowed1"
                                    Display="Dynamic" >*</asp:RequiredFieldValidator>

                                <!-- ********** Min - Max validation *********** -->
                                <asp:RangeValidator 
                                    ID="RangeValidator3" 
                                    runat="server" 
                                    ErrorMessage="Allowed for game 1 should be 0 or higher"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtAllowed1"
                                    MaximumValue="999999999"
                                    MinimumValue="0"
                                    Type="Integer" 
                                    Display="Dynamic">*</asp:RangeValidator>
                            </div> <!-- End of class="row" -->
                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblSpectators1" for="txtSpectators1" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtSpectators1" runat="server" CssClass="form-control" Type="number" ></asp:TextBox>
                        </div>
                            <div class="col-sm-1">
                               <!-- ********** Requiered validation *********** -->
                               <asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator2" 
                                    runat="server" 
                                    ErrorMessage="Spectators for game 1 are required"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtSpectators1"
                                    Display="Dynamic" >*</asp:RequiredFieldValidator>

                                <!-- ********** Min - Max validation *********** -->
                                <asp:RangeValidator 
                                    ID="RangeValidator2" 
                                    runat="server" 
                                    ErrorMessage="Spectators for game 1 should be 0 or higher"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtSpectators1"
                                    MaximumValue="999999999"
                                    MinimumValue="0"
                                    Type="Integer" 
                                    Display="Dynamic">*</asp:RangeValidator>
                            </div>
                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <!-- ------------------------------------------------- < f.	Validation that Points Scored and Points Allowed for 1 game cannot be the same.   > ------------------------------------------------------------ -->
                <asp:CompareValidator 
                    ID="CompareValidator1" 
                    runat="server" 
                    ErrorMessage="For and Against for game 1 must be different"
                    ControlToCompare="txtScored1"
                    ControlToValidate="txtAllowed1" 
                    Operator="NotEqual" 
                    SetFocusOnError="True"
                    CssClass="alert-danger">
                </asp:CompareValidator>

            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->


 <!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><>< <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
 <><><><><><><><><><><><><><><><><><><><><> ----- GAME 2 ------ <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>-->           
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 2</h3>

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult2" for="radioResult2" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">

                            <asp:RadioButtonList ID="radioResult2" runat="server" >
                                <asp:ListItem value="1" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="0" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>

                            <!-- ********** Requiered validation *********** -->
                           <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator14" 
                                runat="server" 
                                ErrorMessage="Result required (game 2)"
                                cssclass="alert-danger"
                                ControlToValidate="radioResult2"
                                Display="Dynamic" ></asp:RequiredFieldValidator>

                        </div> <!-- End of class="col-sm-8" -->
                    </div> <!-- End of class="radio" -->
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblScored2" for="txtScored2" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                        <div class="col-sm-6">
                             <asp:TextBox ID="txtScored2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                               <!-- ********** Requiered validation *********** -->
                               <asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator4" 
                                    runat="server" 
                                    ErrorMessage="Allowed for game 2 is required"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtAllowed2"
                                    Display="Dynamic" >*</asp:RequiredFieldValidator>

                                <!-- ********** Min - Max validation *********** -->
                                <asp:RangeValidator 
                                    ID="RangeValidator4" 
                                    runat="server" 
                                    ErrorMessage="Allowed for game 2 should be 0 or higher"
                                    cssclass="alert-danger"
                                    ControlToValidate="txtAllowed2"
                                    MaximumValue="999999999"
                                    MinimumValue="0"
                                    Type="Integer" 
                                    Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->

                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblAllowed2" for="txtAllowed2" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtAllowed2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                   <!-- ********** Requiered validation *********** -->
                                   <asp:RequiredFieldValidator 
                                        ID="RequiredFieldValidator5" 
                                        runat="server" 
                                        ErrorMessage="Scored for game 2 is required"
                                        cssclass="alert-danger"
                                        ControlToValidate="txtScored2"
                                        Display="Dynamic" >*</asp:RequiredFieldValidator>

                                    <!-- ********** Min - Max validation *********** -->
                                    <asp:RangeValidator 
                                        ID="RangeValidator5" 
                                        runat="server" 
                                        ErrorMessage="Scored for game 2 should be 0 or higher"
                                        cssclass="alert-danger"
                                        ControlToValidate="txtScored2"
                                        MaximumValue="999999999"
                                        MinimumValue="0"
                                        Type="Integer" 
                                        Display="Dynamic">*</asp:RangeValidator>
                         </div> <!-- End of class="col" -->
                    
                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    
                    <div class="row">
                        <asp:Label ID="lblSpectators2" for="txtSpectators2" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtSpectators2" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                       <!-- ********** Requiered validation *********** -->
                                       <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator6" 
                                            runat="server" 
                                            ErrorMessage="Spectators for game 2 is required"
                                            cssclass="alert-danger"
                                            ControlToValidate="txtSpectators2"
                                            Display="Dynamic" >*</asp:RequiredFieldValidator>

                                        <!-- ********** Min - Max validation *********** -->
                                        <asp:RangeValidator 
                                            ID="RangeValidator6" 
                                            runat="server" 
                                            ErrorMessage="Spectators for game 2 should be 0 or higher"
                                            cssclass="alert-danger"
                                            ControlToValidate="txtSpectators2"
                                            MaximumValue="999999999"
                                            MinimumValue="0"
                                            Type="Integer" 
                                            Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

                <!-- ------------------------------------------------- < f.	Validation that Points Scored and Points Allowed for 1 game cannot be the same.   > ------------------------------------------------------------ -->
                <asp:CompareValidator 
                    ID="CompareValidator2" 
                    runat="server" 
                    ErrorMessage="For and Against for game 2 must be different"
                    ControlToCompare="txtScored2"
                    ControlToValidate="txtAllowed2" 
                    Operator="NotEqual"
                    CssClass="alert-danger">
                </asp:CompareValidator>

            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->



<!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><>< <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><> ----- GAME 3 ------ <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>-->

            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 3</h3>

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblResult3" for="radioResult3" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">

                            <asp:RadioButtonList ID="radioResult3" runat="server">
                                <asp:ListItem value="1" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="0" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>

                            <!-- ********** Requiered validation *********** -->
                           <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator15" 
                                runat="server" 
                                ErrorMessage="Result required (game 3)"
                                cssclass="alert-danger"
                                ControlToValidate="radioResult3"
                                Display="Dynamic" ></asp:RequiredFieldValidator>

                        </div>  <!-- End of class="col-sm-8" -->
                    </div>  <!-- End of class="radio" -->
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">

                    <div class="row">
                        <asp:Label ID="lblAllowed3" for="txtAllowed3" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtAllowed3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                           <!-- ********** Requiered validation *********** -->
                                           <asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator7" 
                                                runat="server" 
                                                ErrorMessage="Allowed for game 3 is required"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtAllowed3"
                                                Display="Dynamic" >*</asp:RequiredFieldValidator>

                                            <!-- ********** Min - Max validation *********** -->
                                            <asp:RangeValidator 
                                                ID="RangeValidator7" 
                                                runat="server" 
                                                ErrorMessage="Allowed for game 3 should be 0 or higher"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtAllowed3"
                                                MaximumValue="999999999"
                                                MinimumValue="0"
                                                Type="Integer" 
                                                Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

                <div class="form-group">
                    <div class="row">

                        <asp:Label ID="lblScored3" for="txtScored3" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtScored3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                       <!-- ********** Requiered validation *********** -->
                                       <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator8" 
                                            runat="server" 
                                            ErrorMessage="Scored for game 3 is required"
                                            cssclass="alert-danger"
                                            ControlToValidate="txtScored3"
                                            Display="Dynamic" >*</asp:RequiredFieldValidator>

                                        <!-- ********** Min - Max validation *********** -->
                                        <asp:RangeValidator 
                                            ID="RangeValidator8" 
                                            runat="server" 
                                            ErrorMessage="Scored for game 3 should be 0 or higher"
                                            cssclass="alert-danger"
                                            ControlToValidate="txtScored3"
                                            MaximumValue="999999999"
                                            MinimumValue="0"
                                            Type="Integer" 
                                            Display="Dynamic">*</asp:RangeValidator>
                         </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

                <div class="form-group">

                    <div class="row">
                        <asp:Label ID="lblSpectators3" for="txtSpectators3" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtSpectators3" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                           <!-- ********** Requiered validation *********** -->
                                           <asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator9" 
                                                runat="server" 
                                                ErrorMessage="Spectators for game 3 is required"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtSpectators3"
                                                Display="Dynamic" >*</asp:RequiredFieldValidator>

                                            <!-- ********** Min - Max validation *********** -->
                                            <asp:RangeValidator 
                                                ID="RangeValidator9" 
                                                runat="server" 
                                                ErrorMessage="Spectators for game 3 should be 0 or higher"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtSpectators3"
                                                MaximumValue="999999999"
                                                MinimumValue="0"
                                                Type="Integer" 
                                                Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

        <!-- ------------------------------------------------- < f.	Validation that Points Scored and Points Allowed for 1 game cannot be the same.   > ------------------------------------------------------------ -->
                <asp:CompareValidator 
                    ID="CompareValidator3" 
                    runat="server" 
                    ErrorMessage="For and Against for game 3 must be different"
                    ControlToCompare="txtScored3"
                    ControlToValidate="txtAllowed3" 
                    Operator="NotEqual" 
                    SetFocusOnError="True"
                    CssClass="alert-danger">
                </asp:CompareValidator>

            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->



<!-- <><><><><><><><><><><><><><><><><><><><><><><><><><><><>< <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><> ----- GAME 4 ------ <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>-->
            <div class="well col-lg-3 col-md-4 col-sm-6 col-xs-8" style="border: 1px solid RGB(140,140,140); border-radius: 4px;"> 
                <h3 class="page-header">Game 4</h3>

                <div class="form-group">
                    <div class="radio">
                        <!-- Radiobuttons -->
                        <asp:Label ID="lblRadio4" for="radioResult4" runat="server" cssclass="control-label col-sm-4">Result:</asp:Label>
                        <div class="col-sm-8">

                            <asp:RadioButtonList ID="radioResult4" runat="server">
                                <asp:ListItem value="1" text="Win" runat="server"></asp:ListItem>
                                <asp:ListItem value="0" text="Loss" runat="server"></asp:ListItem>
                            </asp:RadioButtonList>

                            <!-- ********** Requiered validation *********** -->
                           <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator16" 
                                runat="server" 
                                ErrorMessage="Result required (game 4)"
                                cssclass="alert-danger"
                                ControlToValidate="radioResult4"
                                Display="Dynamic" ></asp:RequiredFieldValidator>

                        </div>  <!-- End of class="col-sm-8" -->
                    </div>  <!-- End of class="radio" -->
                </div> <!-- End of class="form-group" -->

                <!-- Inputs -->
                <div class="form-group">
                    <div class="row">
                        <asp:Label ID="lblAllowed4" for="txtAllowed4" runat="server"  cssclass="control-label col-sm-4">Allowed:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtAllowed4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                               <!-- ********** Requiered validation *********** -->
                                               <asp:RequiredFieldValidator 
                                                    ID="RequiredFieldValidator12" 
                                                    runat="server" 
                                                    ErrorMessage="Allowed for game 4 is required"
                                                    cssclass="alert-danger"
                                                    ControlToValidate="txtAllowed4"
                                                    Display="Dynamic" >*</asp:RequiredFieldValidator>

                                                <!-- ********** Min - Max validation *********** -->
                                                <asp:RangeValidator 
                                                    ID="RangeValidator12" 
                                                    runat="server" 
                                                    ErrorMessage="Allowed for game 4 should be 0 or higher"
                                                    cssclass="alert-danger"
                                                    ControlToValidate="txtAllowed4"
                                                    MaximumValue="999999999"
                                                    MinimumValue="0"
                                                    Type="Integer" 
                                                    Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->
                </div> <!-- End of class="form-group" -->

                <div class="form-group">

                    <div class="row">
                        <asp:Label ID="lblScored4" for="txtScored4" runat="server" cssclass="control-label col-sm-4">Scored:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtScored4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                           <!-- ********** Requiered validation *********** -->
                                           <asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator11" 
                                                runat="server" 
                                                ErrorMessage="Scored for game 4 is required"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtScored4"
                                                Display="Dynamic" >*</asp:RequiredFieldValidator>

                                            <!-- ********** Min - Max validation *********** -->
                                            <asp:RangeValidator 
                                                ID="RangeValidator11" 
                                                runat="server" 
                                                ErrorMessage="Scored for game 4 should be 0 or higher"
                                                cssclass="alert-danger"
                                                ControlToValidate="txtScored4"
                                                MaximumValue="999999999"
                                                MinimumValue="0"
                                                Type="Integer" 
                                                Display="Dynamic">*</asp:RangeValidator>
                         </div> <!-- End of class="col" -->
                      </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

                <div class="form-group">

                    <div class="row">
                        <asp:Label ID="lblSpectators4" for="txtSpectators4" runat="server" cssclass="control-label col-sm-4">Spectators:</asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtSpectators4" runat="server" cssclass="form-control" Type="number" ></asp:TextBox>
                        </div>

                        <div class="col-sm-1">
                                               <!-- ********** Requiered validation *********** -->
                                               <asp:RequiredFieldValidator 
                                                    ID="RequiredFieldValidator10" 
                                                    runat="server" 
                                                    ErrorMessage="Spectators for game 4 is required"
                                                    cssclass="alert-danger"
                                                    ControlToValidate="txtSpectators4"
                                                    Display="Dynamic" >*</asp:RequiredFieldValidator>

                                                <!-- ********** Min - Max validation *********** -->
                                                <asp:RangeValidator 
                                                    ID="RangeValidator10" 
                                                    runat="server" 
                                                    ErrorMessage="Spectators for game 4 should be 0 or higher"
                                                    cssclass="alert-danger"
                                                    ControlToValidate="txtSpectators4"
                                                    MaximumValue="999999999"
                                                    MinimumValue="0"
                                                    Type="Integer" 
                                                    Display="Dynamic">*</asp:RangeValidator>
                          </div> <!-- End of class="col" -->
                    </div> <!-- End of class="row" -->

                </div> <!-- End of class="form-group" -->

<!-- ------------------------------------------------- < f.	Validation that Points Scored and Points Allowed for 1 game cannot be the same.   > ------------------------------------------------------------ -->
                <asp:CompareValidator 
                    ID="CompareValidator4" 
                    runat="server" 
                    ErrorMessage="For and Against for game 4 must be different"
                    ControlToCompare="txtScored4"
                    ControlToValidate="txtAllowed4" 
                    Operator="NotEqual" 
                    SetFocusOnError="True"
                    CssClass="alert-danger">
                </asp:CompareValidator>

            </div> <!-- End of class="col-lg-3 col-md-4 col-sm-6 col-xs-8" -->
        <!-- End of Forms to calculate game results.-->


        <asp:Button ID="btnCalculate" runat="server" Text="Summary" CssClass="btn btn-block btn-primary" OnClick="btnCalculate_Click" />


  <!-- [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]
       [][][][][][][][][][]  Alert message  [][][][][][][][][][]
       [][][][][][][][][][][][][][][][][][][][][][][][][][][][][] -->
                    <div class="col-sm-12">
                        <asp:ValidationSummary 
                            ID="ValidationSummary3" 
                            runat="server" 
                            DisplayMode="BulletList"
                            HeaderText="Validation Errors"
                            CssClass="alert-danger"/>
                    </div>
       <!-- [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][] -->



        <!-- /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            /\/\/\/\/\/\/\/\/\/\/\ Calculated information section /\/\/\/\/\/\/\/\/\/\/\/\ 
            /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\-->
        <div class="calculatedSection col-sm-8">
            <h2 class="page-header">Results of games</h2>
            <b>Wins: </b><asp:Label ID="lblNumberOfGamesWon" runat="server" Text=""></asp:Label>
            <br />
            <b>Losses: </b><asp:Label ID="lblNumberOfGamesLost" runat="server" Text=""></asp:Label>
            <br />
            <b>Winning %: </b><asp:Label ID="lblWinningPercent" runat="server" Text=""></asp:Label>
            <br />
            <b>Points Scored: </b><asp:Label ID="lblPointsScored" runat="server" Text=""></asp:Label>
            <br />

            <b>Points Allowed: </b><asp:Label ID="lblPointsAllowed" runat="server" Text=""></asp:Label>
            <br />
            <b>Point Differential: </b><asp:Label ID="lblPointDifferential" runat="server" Text=""></asp:Label>
            <br />
            <b>Total Attendance: </b><asp:Label ID="lblTotalAttendance" runat="server" Text=""></asp:Label>
            <br />
            <b>Average Attendance: </b><asp:Label ID="lblAverageAttendance" runat="server" Text=""></asp:Label>
        </div>

        <!-- /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ -->
    </section>
</asp:Content>