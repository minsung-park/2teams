var data = {
	item: [{
			title: "ex1",
			question: "소프트웨어 개발을 위해 개발 환경을 구축하고자 할 때 고려해야할 사항이 아닌것은?",
			answer: {
				v1: "프로젝트 분석 단계에서 정리된 요구사항들을 고려하여 소프트웨어와 하드웨어 설비를 선정한다",
				v2: "소프트웨어가 운영될 환경과 유사한 구조로 구축한다",
				v3: "하드웨어 환경은 서버와 네트워크로 구성된다.",
				v4: "비즈니스 환경에 적합한 제품들을 선정하여 구축한다."
			},
			result: "3"

		},
		{
			title: "ex2",
			question: "개발 환경 구축 시 갖추어야 할 소프트웨어 환경에 대한 설명으로 잘못된것은?",
			answer: {
				v1: "요구사항의 수집과 분석 및 추적을 위한 관리 도구를 구축해야한다",
				v2: "HTML, CSS, 이미지 등을 처리할 웹 서버를 구축해야 한다",
				v3: "소프트웨어 개발을 위한 구현 도구를 구축해야 한다.",
				v4: "산출물들을 버전별로 관리할 형상 관리 도구를 구축해야 한다"
			},
			result: "2"
		},
		{
			title: "ex3",
			question: "웹 응용 소프트웨어 개발과 관련하여 사용자에게 동적 서비스를 제공하는 서버는?",
			answer: {
				v1: "웹 서버(Web Server)",
				v2: "웹 애플리케이션 서버(WAS)",
				v3: "데이터베이스 서버(DB Server)",
				v4: "파일 서버(File Server)"
			},
			result: "2"
		},
		{
			title: "ex4",
			question: "개발환경 구축 시 고려해야 할 요소들에 대한 설명으로 잘못된 것은?",
			answer: {
				v1: "개발 환경은 크게 하드웨어 환경과 소프트웨어 환경으로 구분된다",
				v2: "성능, 편의성, 개발자의 이해도 등 다양한 요소들을 고려하여 환경을 구축한다.",
				v3: "시스템 소프트웨어와 개발 소프트웨어 등은 소프트웨어 환경에 속한다",
				v4: "하드웨어 환경에는 WAS,OS, DBMS 등이 속한다"
			},
			result: "4"
		},
		{
			title: "ex5",
			question: "서버 개발 프레임워크에 대한 설명으로 옳지 않은 것은?",
			answer: {
				v1: "서버 프로그램 개발 시 사용할 수 있는 다양한 클래스 및 인터페이스의 집합체를 의미한다",
				v2: "서버 개발 프레임워크가 없어도 생산성에 큰 영향은 없다",
				v3: "네트워크 설정, 요청 및 응답 처리, 아키텍처 모델 등 다양한 모듈을 제공한다",
				v4: "주로 모델-뷰-컨트롤러(MVC) 패턴을 기반으로 개발되었다."
			},
			result: "2"
		},
		{
			title: "ex6",
			question: "서버 개발에 사용되는 언어와 프레임워크의 연결이 잘못 짝지어진것은?",
			answer: {
				v1: "JavaScript - Spring",
				v2: "Python - Django",
				v3: "PHP - Codeigniter",
				v4: "Ruby - Rails"
			},
			result: "1"
		},
		{
			title: "ex7",
			question: "다음 중 프레임워크의 특성에 해당하지 않는 것은?",
			answer: {
				v1: "모듈화(Modularity)",
				v2: "캡슐화(Capsulation)",
				v3: "확장성(extensibility)",
				v4: "제어의 역흐름(Inversion of control)"
			},
			result: "2"
		},
		{
			title: "ex8",
			question: "소프트웨어 개발 보안 점검 항목에 대한 설명으로 잘못된것은?",
			answer: {
				v1: "세션 통제는 세션의 연결과 연결로 인해 발생하는 정보를 관리하는 것을 의미한다.",
				v2: "보안 기능은 입력 데이터에 대한 유효성 검증체계를 갖추고, 검증 실패 시 이를 처리할 수 있도록 코딩하는 것을 의미한다",
				v3: "에러처리는 소프트웨어 실행 중 발생할 수 있는 오류들을 사전에 정의하여 예방하는 것을 의미한다",
				v4: "캡슐화는 데이터와 함수를 하나의 객체로 묶어 코딩하는 것을 의미한다"
			},
			result: "2"
		},
		{
			title: "ex9",
			question: "응용 프로그램 개발 시 운영체제나 프로그래밍 언어 등에 있는 라이브러리를 이용할 수 있도록 함으로써 효율적인 소프트웨어 구현을 도와주는 인터페이스는?",
			answer: {
				v1: "IDE(Integrated Development Environment)",
				v2: "통신 프로토콜(Communication Protocol)",
				v3: "API(Application Programming Interface)",
				v4: "USB(Universal Serial Bus)"
			},
			result: "3"
		},
		{
			title: "ex10",
			question: "소프트웨어 개발 과정에서 발생할 수 있는 보안 취약점을 최소화하여\n 보안 위협으로부터 안전한 소프트웨어를 개발하기 위한 일련의 보안 활동은\n데이터의 기밀성, 무결성, 가용성을 유지하는 것을 목표로 한다.\n이를 위해 정부에서 제공하는 (  )를 참고하여 보안 항목들을 점검하여야 한다",
			answer: {
				v1: "소프트웨어 개발 보안 가이드",
				v2: "CERT 구축/운영 안내서",
				v3: "보안인증제도 안내서",
				v4: "암호기술 구현 안내서"
			},
			result: "1"
		},
		{
			title: "ex11",
			question: "배치 프로그램이 가지는 필수 요소에 대한 설명으로 잘못된 것은?",
			answer: {
				v1: "필수 요소에는 대용량 데이터, 자동화, 견고성, 안정성, 성능이 있다",
				v2: "심각한 오류가 아니라면 사용자의 개입 없이 수행되어야 한다.",
				v3: "잘못된 데이터나 중복이 발생하면 일시 정지한 후 관리자의 조치를 기다려야한다",
				v4: "시스템 내의 다른 프로그램의 기능 수행을 방해하지 않아야 한다"
			},
			result: "3"
		},
		{
			title: "ex12",
			question: "배치 프로그램의 수행 주기에 속하지 않는 것은?",
			answer: {
				v1: "정기 배치",
				v2: "상시 배치",
				v3: "On-Demand 배치",
				v4: "이벤트성 배치"
			},
			result: "2"
		},
		{
			title: "ex13",
			question: "패키지 소프트웨어에 대한 설명으로 잘못된 것은?",
			answer: {
				v1: "기업에서 일반적으로 사용하는 기능들을 통합하여 제공하는 소프트웨어이다.",
				v2: "기능 요구사항을 70% 이상 충족시켰을 때 사용하는 것이 좋다",
				v3: "기업 환경에 적합하게 커스터마이징(Customizing)하여 사용한다",
				v4: "패키지 개발 방식은 개발 인력을 갖춰 직접 개발하는 방식을 말한다"
			},
			result: "4"
		},
		{
			title: "ex14",
			question: "다음 중 패키지 개발 방식에 대한 설명으로 잘못된 것은?",
			answer: {
				v1: "패키지 소프트웨어를 이용하여 시스템을 구축하는 개발 방식으로 전용 개발 방식과 대응된다.",
				v2: "직접 개발하는 전용 개발방식에 비해 안정성, 품질, 호환성 등이 뛰어나다",
				v3: "라이선스에 대한 권리가 판매자에게 있기 때문에 프로그램을 분해하거나 모듈을 재사용하는데 제한이 있다.",
				v4: "이미 개발된 소프트웨어를 이용하기 때문에 프로젝트 기간이 단축된다"
			},
			result: "2"
		},
		{
			title: "ex15",
			question: "패키지 소프트웨어와 전용 개발 소프트웨어의 특성에 대한 설명으로 잘못된것은?",
			answer: {
				v1: "패키지 소프트웨어를 사용하는 개발 방식은 기능 요구 사항을 70% 이상 충족한 경우 사용하는 것이 좋다.",
				v2: "패키지 소프트웨어는 전문적인 개발사에 의해 안정성이 보장되지만 전용 개발 소프트웨어는 개발자의 역량이 부족한 경우 안정성이 보장되지 않는다",
				v3: "패키지 소프트웨어는 전용 개발 소프트웨어와 달리 소프트웨어 개발 관리를 위한 어떠한 인력도 필요로 하지 않는다",
				v4: "복잡한 사업 환경에서는 기존의 시스템과 요구사항들을 고려하여 맞춤 제작되는 전용 개발 소프트웨어가 적합하다"
			},
			result: "3"
		},
	]
};




// {
// 	title: "ex3",
// 	question: "",
// 	answer: {
// 		v1: "",
// 		v2: "",
// 		v3: "",
// 		v4: ""
// 	},
// 	result: "1"
// },