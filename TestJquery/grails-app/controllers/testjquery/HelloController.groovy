package testjquery
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

class HelloController {

    def index() {
		//render "Hello World!"
		render(view: "testowa")
	}
	def zakres(){
		render(view: "zakres")
	}
	def zapisz(){
		
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd",new Locale("pl", "PL"));		
		Date myDate1 = params.oddaty
		if(myDate1 !=null)
			println 'Wybrales od daty: ' + dt.format(myDate1)
		
		Date myDate2 = params.dodaty
		if(myDate2 !=null)
			println 'Wybrales do daty: ' + dt.format(myDate2)
	}
}
