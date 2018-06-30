package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.Introduce;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.apache.struts2.interceptor.ServletRequestAware;
import service.IntroduceService;

import javax.servlet.http.*;

public class IntroduceAction extends ActionSupport implements ModelDriven<Introduce>,ServletRequestAware{
    private Introduce introduce = new Introduce();
    @Override
    public Introduce getModel() {
        return introduce;
    }

    HttpServletRequest request;
    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    private IntroduceService introduceService;
    public void setIntroduceService(IntroduceService introduceService) {
        this.introduceService = introduceService;
    }

    public String showIntroduce(){
        int id = 1;
        Introduce introduce = introduceService.selectOne(id);
        request.setAttribute("introduce1",introduce);
        return "showIntroduce";
    }

    public String toUpdate(){

        request.setAttribute("introduce1",introduce);

        return "toUpdate_success";
    }

    public String updateOne(){
        introduceService.updateOne(introduce);
        return "updateOne";
    }


}
