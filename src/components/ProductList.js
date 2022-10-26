import { Link } from "react-router-dom";
import { useParams } from "react-router-dom";
import axios from 'axios'
import React, { useState, useEffect } from 'react'
import ProductCard from "./ProductCard";

function ProductList() {
    let category = useParams()//from the URL

    const [products, setProducts] = useState([])

    const getProducts = async () => {
        const res = await axios.get('http://127.0.0.1:8000/api/products')
        setProducts(res.data)

    }//getProducts

    useEffect(() => {

        getProducts();

    }, [])

    return (
        <>
            <section id="products" className="text-center text-black py-5">
                <div className="container">
                    <div className="row d-flex justify-content-center">
                        <div className="col-md-6">
                            <h2 className="fa-2x">
                                Products
                            </h2>
                            <hr />
                            <p className="text-muted ">
                                No more searching
                                <br />
                                Choose from the finest quality cloth you can ever find
                            </p>
                        </div>{/* title->6 */}
                    </div>{/* row ->title */}



                    {
                        products
                            .filter((product) =>
                                product.category == category.id
                            )
                            .map((product) => {
                                return (< ProductCard key={product.id} product={product} />)
                            })
                    }

                </div>{/* container */}
            </section>{/* Products */}



        </>
    )
}

export default ProductList