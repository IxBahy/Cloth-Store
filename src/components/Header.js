import React from 'react'
import Slide from './Slide';
import { Link } from "react-router-dom";
import Reviews from './Reviews';

function Header() {
    return (
        <>
            <header>

                <div class="container text-white">

                    <div className="row d-flex justify-content-center text-center pt-2 display-5 ">
                        <div className="col-md-4 heading">
                            <h1>
                                tired of all the shopping in the local cloth stores ?
                            </h1>
                            <Link to="/" className=" btn btn-outline-light d-block ">
                                Shop with us now
                            </Link>
                        </div>{/* heading->4 */}
                    </div>{/* row */}
                </div>
                {/* container */}

            </header>

            <Slide />
            <Reviews />
        </>
    )
}

export default Header