package service;

import java.util.List;
import dao.ProductDAO;
import model.Product;

public class ProductService {
    private ProductDAO dao = new ProductDAO();

    public List<Product> getProducts(String lang) {
        return dao.getProducts(lang);
    }
}
