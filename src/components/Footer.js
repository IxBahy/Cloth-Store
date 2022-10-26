import React from 'react'
import { FaInstagram } from "react-icons/fa";
import { FaTwitter } from "react-icons/fa";
import { FaFacebookSquare } from "react-icons/fa";
import { Link } from "react-router-dom";
function Footer() {
    return (
        <>

            <footer className='bottom-0 mt-5'>
                <div className="container ">
                    <div className="row  justify-content-between align-items-center">
                        <div className="col-md-6 text-white">
                            <ul className="footerNav ">
                                <li><Link to="/">Home</Link></li>
                                <li><Link to={`/categories/`}>Categories</Link></li>
                                <li><Link to={`/contacts/`}>Contacts</Link></li>
                            </ul>
                        </div>{/* right footer */}
                        <div className="col-md-6">
                            <ul className="socialNav">
                                <li><a href="#!"><FaInstagram /></a></li>
                                <li><a href="#!"><FaTwitter /></a></li>
                                <li><a href="#!"><FaFacebookSquare /></a></li>

                            </ul>
                        </div>{/* left footer */}
                    </div>{/* row */}
                    <p>Created By Mohamed Elbahy © 2022.</p>
                </div>{/* container */}

            </footer>
        </>
    )
}

export default Footer