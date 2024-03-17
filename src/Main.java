import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

public class Main {
    public static void main(String[] args) {
        try {
            String xslt = "D:\\Download\\convertion.xslt";
            String inputFile = "D:\\Download\\books.xml";
            String outputFile = "D:\\Download\\books.json";


            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(new File(xslt)));


            transformer.transform(new StreamSource(new File(inputFile)), new StreamResult(new File(outputFile)));

            System.out.println("File JSON đã được tạo thành công.");
        } catch (Exception e) {
            System.err.println("Lỗi khi chạy stylesheet XSLT: " + e.getMessage());
            e.printStackTrace();
        }

    }
}