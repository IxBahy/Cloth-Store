import React, { useState, useEffect } from 'react'
import axios from 'axios'
import Navbar from './components/Navbar'
import Footer from './components/Footer'
import { Routes, Route, Link } from "react-router-dom";
import Header from './components/Header';

import Categories from './components/Categories';
import Contact from './components/Contact'
import ProductList from './components/ProductList';

// can use fetch insted

function App() {
    return (
        <>

            <Navbar />

            <Routes>
                <Route path='/' element={<Header />} />
                <Route path='/categories/' element={<Categories />} />
                <Route path='/contacts/' element={<Contact />} />
                <Route path='/ProductList/:id' element={<ProductList />} />
            </Routes>

            <Footer />
        </>
    )
}

export default App