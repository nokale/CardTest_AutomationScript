package pages.demosite;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import Utils.PropertyFileReader;
import net.serenitybdd.annotations.Step;

public class Screen {

	PropertyFileReader prop = new PropertyFileReader("src/test/resources/config.properties");

	Page page;

	@Step
	public void open(String user, String elementKey) {
		elementKey = findBrackets(elementKey);
		page.openPage(elementKey);
	}

	@Step
	public void update(String value, String elementType, String elementKey) {
		elementKey = findBrackets(elementKey);
		page.update(value, elementType, elementKey);
	}

	@Step
	public void select(String elementType, String elementKey) {
		page.get(elementType, elementKey);
	}

	@Step
	public void click(String id, String elementKey) {
		elementKey = findBrackets(elementKey);
		page.click(id, elementKey);
	}

	@Step
	public void verify(String elementKey, String elementValue) {
		page.get(null, null);
	}

	@Step
	public void view(String data) {
		page.view(data);
	}

//	public String findVariable(String statement) {
//		String regex = "<(.*?)>";
//		Pattern pattern = Pattern.compile(regex);
//		Matcher matcher = pattern.matcher(statement);
//		int lastEnd = 0;
//		StringBuilder result = new StringBuilder();
//		while (matcher.find()) {
//			String value = matcher.group(1);
//			result.append(statement, lastEnd, matcher.start());
//			result.append(prop.getProperty(value));
//			lastEnd = matcher.end();
//		}
//		result.append(statement.substring(lastEnd));
//		return result.toString();
//	}

	public String findBrackets(String element) {
		String regex = "<(.*?)>";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(element);
		if (matcher.find()) {
			String value = matcher.group(1);
			return prop.getProperty(value);
		} else {
			return element;
		}
	}
}
