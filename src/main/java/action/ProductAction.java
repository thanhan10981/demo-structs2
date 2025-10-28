package action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.Product;
import service.ProductService;
import dao.ProductDAO; // ❗ thêm dòng này

public class ProductAction extends ActionSupport {
    private List<Product> products;
    private Product product; // ❗ thêm biến này để Struts tự map từ form
    private String lang = "vi"; // mặc định là tiếng Việt
    private ProductService service = new ProductService();

    // Getter & Setter
    public List<Product> getProducts() { return products; }
    public Product getProduct() { return product; }
    public void setProduct(Product product) { this.product = product; }
    public String getLang() { return lang; }
    public void setLang(String lang) { this.lang = lang; }

    // ✅ Action mặc định (hiển thị danh sách)
    @Override
    public String execute() {
        if (lang == null || lang.isEmpty()) {
            lang = "vi"; // ép mặc định khi chưa chọn
        }
        products = service.getProducts(lang);
        return SUCCESS;
    }


    // ✅ Action thêm sản phẩm
    public String add() {
        ProductDAO dao = new ProductDAO();
        dao.addProduct(product);
        addActionMessage("✅ Thêm sản phẩm thành công!");
        return SUCCESS;
    }

    private int id; // thêm thuộc tính này

    public void setId(int id) { this.id = id; }

    public String delete() {
        ProductDAO dao = new ProductDAO();
        dao.deleteProduct(id); // dùng id trực tiếp, không cần product
        products = service.getProducts(lang);
        addActionMessage("🗑️ Xoá sản phẩm ID: " + id + " thành công!");
        return SUCCESS;
    }

}
