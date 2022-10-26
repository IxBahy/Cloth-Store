import React from 'react'
import { FaUser } from "react-icons/fa";
import { FaLock } from "react-icons/fa";
import { FaEnvelope } from "react-icons/fa";
import { FaPen } from "react-icons/fa";

function Contact() {
    return (
        <>
            <section id="location" className="text-center text-black py-5">
                <div className="container ">
                    <div className="row d-flex justify-content-center">
                        <div className="col-md-6 pb-3">
                            <h2 className="fa-2x">
                                Location
                            </h2>
                            <hr />
                        </div>{/* title ->6 */}
                    </div>{/* row -> title*/}

                    <div className="row">
                        <div className="map col-6 ">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11416.167431886004!2d31.37856119734183!3d31.
            036235767724175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79da49712c32d%3A0x362ce250f7f5a463!2sPapa%20John'
            s%20Pizza!5e0!3m2!1sen!2seg!4v1663499480343!5m2!1sen!2seg" width="100%" height={450} style={{ border: 0 }} allowFullScreen loading="lazy" referrerPolicy="no-referrer-when-downgrade" />
                        </div>{/* map */}

                        <div className="form col-6 ">
                            <h3 className="pb-2">Join us now</h3>
                            <form >
                                <div className="input-group mb-3">
                                    <span className="input-group-text" id="basic-addon1"><FaUser /></span>
                                    <input type="text" className="form-control" placeholder="Name" aria-label="Username" aria-describedby="basic-addon1" />
                                </div>
                                <div className="input-group mb-3">
                                    <span className="input-group-text" id="basic-addon1"><FaLock /></span>
                                    <input type="text" className="form-control" placeholder="Password" aria-label="password" aria-describedby="basic-addon1" />
                                </div>
                                <div className="input-group mb-3">
                                    <span className="input-group-text" id="basic-addon1"><FaEnvelope /></span>
                                    <input type="text" className="form-control" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1" />
                                </div>
                                <div className="input-group">
                                    <span className="input-group-text"><FaPen /></span>
                                    <textarea className="form-control" placeholder="Address and Numbers" aria-label="With textarea" style={{ height: 100 }} defaultValue={""} />
                                </div>
                                <div className="d-grid mt-3">
                                    <button type="submit" className="btn btn-primary">
                                        Join now
                                    </button>
                                </div>
                            </form>
                        </div>{/* form */}
                    </div>{/* row */}
                </div>{/* container */}
            </section>

        </>
    )
}

export default Contact