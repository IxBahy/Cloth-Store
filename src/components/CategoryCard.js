import React from 'react'
import { Link } from "react-router-dom";

function CategoryCard({ category }) {
    return (
        <>
            <div className="col-md-3 col-sm-6">
                <div className="card" style={{ width: '18rem' }}>
                    <img src={require(`../assets/images/${category.image}`)} className="card-img-top" alt="..." />
                    <div className="card-body">
                        <h5 className="card-title">{category.title}</h5>
                        <Link to={`/ProductList/${category.id}`} className="btn btn-outline-dark">Check Now!</Link>
                    </div>
                </div>
                {/* card */}
            </div>
            {/* cols */}


        </>
    )
}

export default CategoryCard