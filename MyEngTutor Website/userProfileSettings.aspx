<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeFile="userProfileSettings.aspx.cs" Inherits="MyEngTutor_Website.userProfileSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="alertMessage" runat="server" class="alert alert-success alert-dismissible fade show" role="alert">
        <h4 id="alertText" runat="server" class="alert-heading">Form Submitted Successfully!</h4>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <section style="background-color: #eee;">
        <div class="container py-3 h-100">
            <div class="row pb-4">
                <div class="col">
                <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3">
                    <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="userPage.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="profile.aspx">User Profile</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Settings</li>
                    </ol>
                </nav>
                </div>
            </div>
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-7 d-flex p-3">
                                <div class="card-body">
                                    <h5 class="fw-normal mb-5 pb-3" style="letter-spacing: 1px;">Settings</h5>
                                    <div class="align-items-center">
                                        <div class="row justify-content-center">
                                            <div class="col-6">
                                                <label for="fnameId" runat="server" id="name1" class="form-label">First Name</label>
                                                <asp:TextBox ID="fnameId" type="text" runat="server" CssClass="form-control mb-4"></asp:TextBox>
                                            </div>

                                            <div class="col-6">
                                                <label id="name2" runat="server" for="snameId" class="form-label">Second Name</label>
                                                <asp:TextBox ID="snameId" type="text" runat="server" CssClass="form-control mb-4"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="mb-4">
                                            <label id="email" for="userEmail" runat="server" class="form-label">Email Address</label>
                                            <asp:TextBox ID="userEmail" type="email" runat="server" CssClass="form-control mb-4" Enabled="False"></asp:TextBox>
                                        </div>

                                        <div class="mb-4">
                                            <label id="password" runat="server" for="userPasswordId" class="form-label">Password</label>
                                            <asp:TextBox ID="userPasswordId" type="password" runat="server" CssClass="form-control mb-4"></asp:TextBox>
                                        </div>

                                        <div class="row justify-content-center mb-4">
                                            <div class="col-12">
                                                <label for="FileUpload1" class="form-label">Upload</label>
                                                <asp:FileUpload type="file" CssClass="form-control" ID="FileUpload1" runat="server" />
                                                <label ID="dis" runat="server" class="form-label">Upload</label>
                                            </div>
                                        </div>

                                        <div class="row justify-content-center">
                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <asp:Button ID="update" runat="server" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnUpdate_Click" Text="Update" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="Assets/RegisterFormImage.png" class="img-fluid rounded-start" alt="Sample image" style="border-radius: 1rem 0 0 1rem;"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
