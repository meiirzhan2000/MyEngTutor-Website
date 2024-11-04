<%@ Page Language="C#" MasterPageFile="~/visitorMasterPage.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="MyEngTutor_Website.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-light">
        <div id="alertMessage" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert">
            <h4 id="alertText" runat="server" class="alert-heading">The Email Or Password is not correct</h4>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="Assets/Ellipse%201.png" class="img-fluid rounded-start" alt="Sample image" style="border-radius: 1rem 0 0 1rem;"/>
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center p-3">
                                <div class="card-body">
                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="email" type="email" runat="server" CssClass="form-control mb-4" placeholder="Place email here" OnTextChanged="email_TextChanged"></asp:TextBox>
                                        <label id="emailText" runat="server" class="text-dark"  for="userEmail">Email</label>
                                    </div>

                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="password" type="password" runat="server" CssClass="form-control mb-4" placeholder="Place password here" OnTextChanged="password_TextChanged"></asp:TextBox>
                                        <label id="passwordText" runat="server" class="text-dark" for="userPassword">Password</label>
                                    </div>


                                    <div class="d-grid">
                                        <asp:Button ID="signIn" runat="server" CssClass="btn btn-dark btn-lg btn-block" OnClick="signInButton" Text="Sign In" />
                                    </div>

                                    <p class="text-center text-muted mt-5 mb-0">New User? <a href="RegisterationForm.aspx"
                                        class="fw-bold text-body"><u>Sign Up here</u></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
