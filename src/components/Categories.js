
import axios from 'axios'
import React, { useState, useEffect } from 'react'
import CategoryCard from './CategoryCard'




function Categories() {

    const [categories, setCategories] = useState([])

    const getCategories = async () => {
        const res = await axios.get('http://127.0.0.1:8000/api/categories')
        setCategories(res.data)

    }//getCategories

    useEffect(() => {

        getCategories();

    }, [])



    return (
        <>
            <section id="categories" className="text-center text-black py-5">
                <div className="container">
                    <div className="row d-flex justify-content-center">
                        <div className="col-md-6">
                            <h2 className="fa-2x">
                                Categories
                            </h2>
                            <hr />
                            <p className="text-muted ">
                                No more searching
                                <br />
                                All what you need and more below
                            </p>
                        </div>{/* title->6 */}
                    </div>{/* row ->title */}
                    <div className="row">

                        {
                            categories.map((category) => {
                                return (< CategoryCard key={category.id} category={category} />)
                            })
                        }
                    </div>
                    {/* row */}

                </div>{/* container */}
            </section>{/* categories */}



        </>
    )
}

export default Categories