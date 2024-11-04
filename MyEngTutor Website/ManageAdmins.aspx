<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageAdmins.aspx.cs" Inherits="MyEngTutor_Website.ManageAdmins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="alertMessage" runat="server" class="alert alert-success alert-dismissible fade show" role="alert">
        <h4 id="alertText" runat="server" class="alert-heading">New Admin Successfully Added!</h4>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <section style="background-color: #eee;">
        <div class="container h-100">
            <div class="row pb-4">
                <div class="col">
                <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3">
                    <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Admin Manager</li>
                    </ol>
                </nav>
                </div>
            </div>
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-7 d-flex align-items-center p-3">
                                <div class="card-body">
                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Add A New Administrator!</h5>
                                    <div class="row justify-content-center">
                                        <div class="col-6">
                                            <label for="fname" runat="server" id="name1" class="form-label">First Name</label>
                                            <asp:TextBox ID="fname" type="text" runat="server" CssClass="form-control mb-4" ></asp:TextBox>
                                        </div>

                                        <div class="col-6">
                                            <label id="name2" runat="server" for="sname" class="form-label">Second Name</label>
                                            <asp:TextBox ID="sname" type="text" runat="server" CssClass="form-control mb-4" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        <label id="email" for="userEmail" runat="server" class="form-label">Email Address</label>
                                        <asp:TextBox ID="userEmail" type="email" runat="server" CssClass="form-control mb-4"></asp:TextBox>
                                    </div>

                                    <div class="mb-4">
                                        <label id="password" runat="server" for="userPassword" class="form-label">Password</label>
                                        <asp:TextBox ID="userPassword" type="password" runat="server" CssClass="form-control mb-4"></asp:TextBox>
                                    </div>

                                    <div class="row justify-content-center">
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <asp:Button ID="add" runat="server" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnUpdate_Click" Text="Add" />
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