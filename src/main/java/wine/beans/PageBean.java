package wine.beans;

public class PageBean {
   
   //최소 페이지 번호
   private int min;
   
   //최대 페이지 번호
   private int max;
   
   //이전 버튼의 페이지 번호
   private int prevPage;
   
   //다음 버튼의 페이지 번호
   private int nextPage;
   
   //전체 페이지 개수
   private int pageCnt;
   
   //현재 페이지 번호
   private int currentPage;
   
   //contentCnt : 전체글 갯수(oracle), currentPage : 현재글번호(oracle)
   //ContentPageCnt : 페이지당 글의 개수(page.listcnt), pageinationcnt(page.pageinationcnt):페이지버튼갯수
   
   public PageBean(int contentCnt, int currentPage, int ContentPageCnt, int pageinationcnt) {
      
      //현재 페이지 번호
      this.currentPage=currentPage;
      
      //전체 페이지 갯수
      pageCnt= contentCnt/ContentPageCnt;
      //533/10 = 53 이므로 1page 더 필요
      if(contentCnt % ContentPageCnt > 0) {
         pageCnt++;
      }
      
      /* 보이는 페이지 버튼
        1~10 : 1(최소) 10(최대)
        11~20 : 11, 20
        21~30 : 21, 30
        최대는 최소에 9만 더하면 되므로 최소만 입력하면 됨
        시작페이지 구현 공식
        //-1
        0~9 : 0 / 10~19 : 10 / 20~29 : 20
        
        //페이지당 글갯수로 나눔
         0/10 : 0 , 10/10 : 1, 20/10 : 2
        
        //페이지당 글의갯수로 다시 곱하면
         0 : 0
         1 : 10
         2 : 20
         
         //+1를 더함
          0 +1 :1
          10 +1:11
          20+1:21         
      */
      
      min=((currentPage-1)/ContentPageCnt)*ContentPageCnt+1;
      max=min+pageinationcnt-1;
      //전체페이지가 53이라면 해당 구간은 51~60까지 버튼이 생성됨->불필요한 54~60까지는 버튼이 생성되면 안됨
      //마지막페이지를 넘어가지 않도록 설정
      if(max > pageCnt) {
         max=pageCnt;
      }      
      prevPage=min-1; //이전
      nextPage=max+1; //이후
      
      if(nextPage > pageCnt) {
         nextPage=pageCnt;
      }
   }

public int getMin() {
	return min;
}

public void setMin(int min) {
	this.min = min;
}

public int getMax() {
	return max;
}

public void setMax(int max) {
	this.max = max;
}

public int getPrevPage() {
	return prevPage;
}

public void setPrevPage(int prevPage) {
	this.prevPage = prevPage;
}

public int getNextPage() {
	return nextPage;
}

public void setNextPage(int nextPage) {
	this.nextPage = nextPage;
}

public int getPageCnt() {
	return pageCnt;
}

public void setPageCnt(int pageCnt) {
	this.pageCnt = pageCnt;
}

public int getCurrentPage() {
	return currentPage;
}

public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}
   

}