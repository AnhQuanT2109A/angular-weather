import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.io.FileReader;
import java.util.Iterator;

public class Main {
    public static void main(String[] args) {
        JSONParser parser = new JSONParser();
        try{
            Object obj = parser.parse(new FileReader("course.json"));
            JSONObject jsonObject = (JSONObject)obj;
            String name = (String)jsonObject.get("Name");
            String course = (String)jsonObject.get("Course");
            JSONArray sub = (JSONArray)jsonObject.get("Subjects");

            System.out.println("Name: " + name);
            System.out.println("Course: "+ course);

            System.out.println("Subjects: ");
            Iterator iterator = sub.iterator();
            while (iterator.hasNext()){
                System.out.println(iterator.next());
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}