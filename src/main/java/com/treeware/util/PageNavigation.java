package com.treeware.util;

public class PageNavigation {
	private String root;
	private boolean nowFirst;
	private boolean nowLast;
	private int totalArticleCount;
	private int newArticleCount;
	private int totalPageCount;
	private int pageNo;
	private String key;
	private String word;
	private String navigator;

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public boolean isNowFirst() {
		return nowFirst;
	}

	public void setNowFirst(boolean nowFirst) {
		this.nowFirst = nowFirst;
	}

	public boolean isNowLast() {
		return nowLast;
	}

	public void setNowLast(boolean nowLast) {
		this.nowLast = nowLast;
	}

	public int getTotalArticleCount() {
		return totalArticleCount;
	}

	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}

	public int getNewArticleCount() {
		return newArticleCount;
	}

	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getNavigator() {
		return navigator;
	}
	
	public void setNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();
		
		int pc = TreewareConstance.PAGE_COUNT;
		int prePage = (pageNo - 1) / pc * pc;
		
		tmpNavigator.append("<table style='width:230px;margin:40px 0 60px 0'>\n");
		tmpNavigator.append("	<tr>\n");
		if (this.isNowFirst()) {
			tmpNavigator.append("		<td colspan='2'>\n");
			tmpNavigator.append("			<ul id='paging' class='pagination pg-default pg-small'>\n");
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='FirstPage'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							<label class='firstpage'>&laquo;</label>\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>FirstPage</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='Previous'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							&lt;\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>Previous</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
		} else {
			tmpNavigator.append("		<td colspan='2'>\n");
			tmpNavigator.append("			<ul id='paging' class='pagination pg-default pg-small'>\n");
			tmpNavigator.append("				<li class=\"page-item\">\n");
			tmpNavigator.append("					<a class='page-link' aria-label='FirstPage'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							<label class='firstpage'>&laquo;</label>\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>FirstPage</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='Previous'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							<label class='movepage' mv-page-no=\""+ prePage + "\">&lt;</label>\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>Previous</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
		}
		
		int startPage = prePage + 1;
		int endPage = prePage + pc;
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		for (int i = startPage; i <= endPage; i++) {
			if (pageNo == i) {
				tmpNavigator.append("				<li class='page-item active'>\n");
				tmpNavigator.append("					<a class='page-link'>\n");
				tmpNavigator.append("						"+ i +"\n");
				tmpNavigator.append("					</a>\n");
				tmpNavigator.append("				</li>\n");
			} else {
				tmpNavigator.append("				<li class='page-item'>\n");
				tmpNavigator.append("					<a class='page-link'>\n");
				tmpNavigator.append("						<label class='movepage' mv-page-no=\""+ i +"\">\n");
				tmpNavigator.append("							"+ i +"\n");
				tmpNavigator.append("						</label>\n");
				tmpNavigator.append("					</a>\n");
				tmpNavigator.append("				</li>\n");
			}
		}
		
		if (this.isNowLast()) {
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='Next'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							&gt;\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>Next</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='LastPage'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							&raquo;\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>LastPage</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
		} else {
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='Next'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							<label class='movepage' mv-page-no=\""+ (endPage + 1) + "\">&gt;</label>\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>Next</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
			tmpNavigator.append("				<li class='page-item'>\n");
			tmpNavigator.append("					<a class='page-link' aria-label='LastPage'>\n");
			tmpNavigator.append("						<span aria-hidden='true'>\n");
			tmpNavigator.append("							<label class='movepage' mv-page-no=\""+ totalPageCount + "\">&raquo;</label>\n");
			tmpNavigator.append("						</span>\n");
			tmpNavigator.append("						<span class='sr-only'>LastPage</span>\n");
			tmpNavigator.append("					</a>\n");
			tmpNavigator.append("				</li>\n");
		}
		tmpNavigator.append("			</ul>\n");
		tmpNavigator.append("		</td>\n");
		tmpNavigator.append("	</tr>\n");
		tmpNavigator.append("</table>\n");

		this.navigator = tmpNavigator.toString();
	}
}