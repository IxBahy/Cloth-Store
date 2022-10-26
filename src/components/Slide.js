import React from 'react'
import rSlide1 from '../assets/images/side1.jpg'
import rSlide2 from '../assets/images/side2.jpg'
import lSlide1 from '../assets/images/w-side1.jpg'
import lSlide2 from '../assets/images/w-side2.jpeg'


function Slide() {
    return (
        <>

            <section id="about" className="text-center text-black py-5">
                <div className="container ">
                    <div className="row d-flex justify-content-center">
                        <div className="col-md-6">
                            <h2 className="fa-2x">
                                Who are we ?
                            </h2>
                            <hr />
                            <p className="text-muted ">
                                we are a group that seeks to provied the latest fashon for the youth
                                <br />
                                with a high quality cloth and affordable prices
                            </p>
                        </div>{/* title->6 */}
                    </div>{/* row ->title */}
                    <div className="row">
                        <div className="col-md-6 col-sm-12">
                            <div id="carouselExampleSlidesOnly" className="carousel slide  " data-bs-ride="carousel">
                                <div className="carousel-inner ">
                                    <div className="carousel-item active">
                                        <img src={lSlide1} className="d-block w-100 rounded-1" alt="..." />
                                    </div>
                                    <div className="carousel-item">
                                        <img src={lSlide2} className="d-block w-100 rounded-1" alt="..." />
                                    </div>
                                </div>
                            </div>
                        </div>{/* carousel--1 */}
                        <div className="col-md-6 col-sm-12">
                            <div id="carouselExampleSlidesOnly" className="carousel slide" data-bs-ride="carousel">
                                <div className="carousel-inner">
                                    <div className="carousel-item active">
                                        <img src={rSlide1} className="d-block w-100 rounded-1" alt="..." />
                                    </div>
                                    <div className="carousel-item">
                                        <img src={rSlide2} className="d-block w-100 rounded-1" alt="..." />
                                    </div>
                                </div>
                            </div>
                        </div>{/* carousel--2 */}
                    </div>{/* row ->carousel */}
                </div>{/* container */}
            </section>{/* about */}

        </>
    )
}

export default Slide