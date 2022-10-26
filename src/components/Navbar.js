import logo from '../assets/images/logo.png'
import React from 'react'
import { Link } from "react-router-dom";
function Navbar() {
    return (
        <>
            <nav className="navbar navbar-expand-lg fixed-top ">
                <div className="container ">
                    <a className="navbar-brand" to="#!">
                        <img src={logo} alt="" style={{ height: "80px" }} />
                    </a>
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon" />
                    </button>
                    <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div className="navbar-nav ms-auto ">
                            <Link className="nav-link " to="/">Home</Link>
                            <Link className="nav-link" to={`/categories/`}>Categories</Link>
                            <Link className="nav-link" to={`/contacts/`}>Contacts</Link>
                            <Link className="nav-link " to='#!'></Link>
                        </div>
                    </div>
                </div>
            </nav>
        </>
    )
}

export default Navbar