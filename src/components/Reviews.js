import React from 'react'
import { FaQuoteLeft } from "react-icons/fa";

function Reviews() {
    return (
        <>
            <section id="reviews" className='mb-5 text-white pb-4'>
                <div className="container">
                    <div className="row ">
                        <div className="col-md-4 col-sm-12 customerReview pt-5">
                            <span className="quotation h2"><FaQuoteLeft /></span>
                            <p className='h4 pt-3'> is just awesome! I just launched a startup which leaves me with no time for cooking,
                                so
                                Omnifood is a life-saver. Now that I got used to it, I couldn't live without my daily meals!
                            </p>
                        </div>{/* customerReview */}
                        <div className="col-md-4 col-sm-12 customerReview pt-5">
                            <span className="quotation h2"><FaQuoteLeft /></span>
                            <p className='h4 pt-3'> is just awesome! I just launched a startup which leaves me with no time for cooking,
                                so
                                Omnifood is a life-saver. Now that I got used to it, I couldn't live without my daily meals!
                            </p>
                        </div>{/* customerReview */}
                        <div className="col-md-4 col-sm-12 customerReview pt-5">
                            <span className="quotation h2"><FaQuoteLeft /></span>
                            <p className='h4 pt-3'> is just awesome! I just launched a startup which leaves me with no time for cooking,
                                so
                                Omnifood is a life-saver. Now that I got used to it, I couldn't live without my daily meals!
                            </p>
                        </div>{/* customerReview */}
                    </div>
                    {/* row */}
                </div>
                {/* container */}
            </section>
            {/* reviews */}

        </>
    )
}

export default Reviews