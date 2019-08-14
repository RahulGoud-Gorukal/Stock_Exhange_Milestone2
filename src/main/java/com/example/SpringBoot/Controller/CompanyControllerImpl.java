package com.example.SpringBoot.Controller;

import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SpringBoot.Model.Company;
import com.example.SpringBoot.Service.CompanyService;

@Controller
public class CompanyControllerImpl implements CompanyController {

	@Autowired
	private CompanyService companyService;

	public boolean insertCompany(Company company) throws SQLException {
		return companyService.insertCompany(company);

	}

/*	@Override
	public Company updateCompany(Company company) {
		return companyService.updateCompany(company);
	}
*/
	@RequestMapping(path = "/companyList")
	public ModelAndView getCompanyList() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyList");
		mv.addObject("companyList", companyService.getCompanyList());
		return mv;
	}

	@RequestMapping(value = "/registerCompany", method = RequestMethod.GET)
	public ModelAndView registerAdmin(@Valid @ModelAttribute("company") Company company, BindingResult result,
			HttpServletRequest request, HttpSession session, ModelMap map) throws SQLException {
		
		ModelAndView mav = null;
		if(result.hasErrors()){
			System.out.println("errors");
			System.out.println(result.getAllErrors());
			map.addAttribute("company", company);
			mav = new ModelAndView("companyReg");
			return mav;
		}
		map.addAttribute("company", company);
		companyService.insertCompany(company);
		
		mav = new ModelAndView("companyList");
		mav.addObject("companyList", companyService.getCompanyList());
		return mav;

	}

	@RequestMapping(path = "/create", method = RequestMethod.GET)
	public ModelAndView registerCompany(Model model) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyReg");
		model.addAttribute("company",new Company());
		return mv;
	}	
	
	@RequestMapping(path = "/updateCompany", method = RequestMethod.GET)
	public ModelAndView updateCompany(Model model) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateCompany");
		model.addAttribute("updateCompany",new Company());
		return mv;
	}	
	
/*	@RequestMapping(value = "/updatedDisplay", method = RequestMethod.GET)
	public ModelAndView updateCompany(@ModelAttribute("updateCompany") Company company, BindingResult result,
			HttpServletRequest request, HttpSession session, ModelMap map) throws SQLException {
		
		ModelAndView mav = null;
		if(result.hasErrors()){
			System.out.println("errors");
			System.out.println(result.getAllErrors());
			map.addAttribute("updateCompany", company);
			mav = new ModelAndView("updateCompany");
			return mav;
		}
	
        String companyName = request.getParameter("companyName");
        String ceo =request.getParameter("ceo");
       
        String id1 = request.getParameter("companyCode");
        int id=Integer.parseInt(id1);
       company.setCompanyName(companyName);
       company.setCeo(ceo);
       company.setCompanyCode(id);
		map.addAttribute("updateCompany", company);
		companyService.updateCompany(company);
		
		mav = new ModelAndView("companyList");
		mav.addObject("companyList", companyService.getCompanyList());
		return mav;

	}*/

}
