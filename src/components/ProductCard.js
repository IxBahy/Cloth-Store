import React from 'react'
import { Link } from "react-router-dom";

function ProductCard({ product }) {
    return (
        <>


            <div className="card  mb-4 text-start " >
                <div className="row  align-items-center">
                    <div className='col-md-4 col-sm-6'>
                        <img src={require(`../assets/images/${product.image}`)} className="card-img-top " alt="..." />
                    </div>
                    {/* card img */}
                    <div className="col-md-7 col-sm-6">
                        <h3 className=" pt-3">{product.title}</h3>
                        <p>{product.describtion.slice(0, 200)}.</p>
                        <h4>{product.price} <sub style={{ fontSize: '10px ' }}>EGP</sub> </h4>
                        <Link to='#!' className="btn btn-outline-dark">Add to cart</Link>
                    </div>
                    {/* card-body */}
                </div>
                {/* row */}
            </div>
            {/* card */}


        </>
    )

}

export default ProductCard