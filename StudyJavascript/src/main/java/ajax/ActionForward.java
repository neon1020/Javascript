package ajax;

public class ActionForward {
	private String path; // 포워딩 주소(URL)
	private boolean isRedirect; // 포워딩 방식
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
