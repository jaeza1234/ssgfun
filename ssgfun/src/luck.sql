DROP TABLE T_LUCK CASCADE CONSTRAINT;
CREATE TABLE T_LUCK (
 NAME   VARCHAR2(100) PRIMARY KEY NOT NULL,
 TODAY   VARCHAR2(4000) ,
 TOMORROW   VARCHAR2(4000) ,
 THISWEEK   VARCHAR2(4000) ,
 THISMONTH   VARCHAR2(4000) ,
 THISYEAR   VARCHAR2(4000) ,
 MSG   VARCHAR2(4000) ,
 CNT    NUMBER   
); 

   
SELECT * FROM T_LUCK;
INSERT INTO T_LUCK (NAME, CNT) VALUES ('cnt',0); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('mouse','바쁜 일상 속에서 경쟁 상대보다는, 마음이 맞는 정겨운 선배나 친구를 만나보세요. 평온한 가운데 안정이 찾아오니 내일을 위해 휴식을 취하는 하루를 만들어 보세요.

84년생 모든 것을 포용할 수 있는 당신! 오늘은 에너지가 넘치니 하고 싶은 모든 일을 해낼 수 있어요. 오늘만큼은 목표를 향해 정진해 보세요. 반드시 수확의 기쁨이 따를 거에요.

72년생 매우 좋은 결과가 예상되는군요. 행운이 가득하고 에너지가 넘치는 날이니, 목표가 있다면 오늘 안에 달성해보세요. 목표를 향해 브레이크 없는 직진을 해야겠군요.

60년생 심신이 안정된 상태에요. 정신을 집중해서 일을 추진한다면 좋은 결과를 기대할 수 있어요. 당신을 지지해주는 사람이 있으니 뒤돌아보지 말고 앞으로 나아가세요.

48년생 대인관계가 어느 때보다 원만한 하루에요. 이런 날일수록 주위 사람들과 평소보다 많은 대화를 해 보세요. 중요한 의사 결정 사항이 있다면 오늘 진행하는 것이 좋겠군요.

36년생 노력한 만큼 얻는 이익이 있을 거예요. 하지만 수입보다는 지출이 더 많을 수 있으니 관리를 잘 해야 해요.',

'물질적으로 상당한 이익이 따르는 하루예요. 대체로 물건을 사는 일에 길한 운이 따르군요. 거래와 관련된 모든 상황이 순조롭게 진행되니 바쁘게 움직여야겠군요.

84년생 오늘은 자신을 반성해 보는 시간을 가져보세요. 아무리 노력하더라도 결국 이길 수 없는 게임을 하고 있군요. 게임이나 이성 간의 만남은 잠시 자제하고 본업에 충실히하는 게 좋겠군요.

72년생 생각지도 못했던 지출로 인해 경제적으로 곤란해질 수 있겠군요. 돈을 효율적으로 관리하기 위해 부단히 노력해야 해요. 때론 주변의 조언을 듣는 것도 필요하겠군요.

60년생 모든 것이 불리한 상황이에요. 그동안 노력해 왔던 일들이 한 순간에 무너져 버릴 수 있으니 조심하세요. 주변에 조언을 구할 수 있는 사람을 찾아보는 것도 좋아요.

48년생 오늘은 아픈 곳 없이 건강하게 보낼 수 있겠어요. 돈도 친구도 중요하지만 무엇보다도 건강이 우선이라는 것을 언제나 잊지 마세요.

36년생 혹시 이별을 고민하고 있나요? 사랑하는 사람의 마음을 아프게 하는 결정은 서로를 더 힘들게 할 수 있다는 걸 잊지 마세요.',
'이번 주는 자신을 되돌아보는 시간을 가지세요. 책상 정리를 한다든지 대청소를 해도 좋아요. 정리를 하고 나면 홀가분한 마음이 들 거예요. 마음을 비우고 즐겁게 보내세요.

84년생 자신만의 의견을 내세우기보다는 상대방의 이야기에 귀를 기울이면 좋은 운이 생길 거예요. 한순간의 말실수로 좋은 친구를 잃거나 큰 망신을 당할 수 있으니 말조심하세요!

72년생 중요한 일을 계획했다면 지금까지 고민했던 대로 진행하세요. 행운이 곁에 있어 어떤 일을 진행해도 당신에게 좋은 결과를 가져다줄 거예요. 적극적으로 행동하세요.

60년생 몸과 마음이 고단해서 집중력이 떨어지고 사소한 일에 화가 날 수 있어요. 이번 주만큼은 마음의 여유를 찾기 위해 노력해야 해요. 혼자만의 시간을 가져보세요.

48년생 원만한 대인관계를 위해 충분한 대화가 필요해요. 지금까지 오해하고 쌓였던 모든 일들이 대화를 통해 풀어나가면 잘 해결될 거예요. 이번 주 과제가 되겠네요.

36년생 어렵게 생각하지 말고 가벼운 마음으로 관계를 유지해야 해요. 무언가를 바라는 마음으로 사람들을 만나면 오히려 좋지 않아요. 이유 없이 만나도 좋은 친구와 약속을 잡으세요.',
'이번 달에는 무엇이든 노력하면 쉽게 얻을 수 있으므로 나태해지지 마세요. 성실하게 움직이면 하는 일마다 잘 되고 도움을 주는 귀인이 나타나게 될 거예요.',
'현재의 위치나, 자산을 지켜나가는데 주력해야 해요. 신중한 태도로 임하고 자신의 정보에 기초를 두는 것이 좋아요. 전반적으로 안정적인 가운데, 절대 무모한 도전을 삼가하세요.

84년생 하는 일에 막힘이 없고 비상한 재주를 이용해서 능력을 인정받게 됩니다. 전력질주하면 목적을 쉽게 달성할 수 있습니다.

72년생 가까운 사람과 마찰이 생길 수 있으므로 때론 침묵으로 다툼을 자제하고 스스로 마음을 다스려야 합니다. 시간을 쪼개어 본 업에 충실하고 학업이나 전문적인 분야에 몰두하면 반드시 결실을 맺게 됩니다.

60년생 이기적으로 행동하면 친구나 애인으로부터 이별이 따르는 시기이며 간혹 동업자와 트러블이 생길 가능성이 높습니다. 위기를 극복하고 현명한 처세술로 상황을 밝게 전개시켜야 합니다.

48년생 까다로운 법적 소송이나 비즈니스상 계약등에서 다소 정체되는 일이 생길 수 있으므로 조급함을 버리고 타협과 소통을 중요하게 생각하며 움직여야 합니다.

36년생 주변인과 자존심 대결이나 독선적인 결정으로 마찰이 생겨날 수 있습니다. 때론 지는 것이 이기는 법임을 깨닫고 한 발 뒤로 물러서야 합니다. 철저한 계획과 준비로 시행착오를 겪지 않도록 조심해야 합니다. '
); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('caw','바쁘더라도 자신을 위해서 시간을 내어보세요. 도전과 성취를 좋아하는 분이라도 한 걸음 물러서서 상황을 바라보세요. 오늘은 주변을 정리하면서 휴식을 취하기에 딱 좋은 날이에요.

85년생 오늘은 음주 가무를 조심해야겠군요. 신경이 예민한 상태니 시비나 오해가 생길 수 있어요. 혼자만의 시간을 보내는 것이 좋으니 집에서 공부에 전념해보는 건 어떨까요?

73년생 사랑하는 가족들과 멋진 시간을 보내세요. 가정에 행복이 가득하니, 다른 곳에서 기쁨을 찾을 필요가 없겠군요. 음주 가무와 동료와의 경쟁을 피하는 것이 본인에게 이로운 날이에요.

61년생 심신이 불안한 상태예요. 타인의 진심 어린 조언이 그저 잔소리로 들리네요. 오늘은 부부간의 말다툼이나 직장에서의 의견 충돌을 조심하고, 취미활동을 하거나 휴식을 취해 보세요.

49년생 사소한 문제로 다투거나 시비가 엇갈려 마음이 불편한 하루가 되겠네요. 내 의견만 고집하기보다는 상대방의 의견도 경청하는 자세가 필요해요.

37년생 심심풀이로 시작한 오락으로 인해 지출이 늘어나겠군요. 가볍게 지나갈 일을 크게 만들지 마세요. 금전적인 손해가 건강 문제로 이어질 수 있으니 각별히 신경 써야 합니다.',
'사방에서 물량이 쏟아져 나오니 발 빠르게 움직여 대응하세요. 무엇이든 노력하고, 용기를 가지고 도전하면 승산이 있어요. 오늘은 여유로움을 뒤로하고 목표를 향해 달려보세요.

85년생 어머나! 오늘은 애정지수가 살짝 저조하군요. 이런 날은 만남을 잠시 미루는 것이 상책! 학업이나 본업에 충실하고, 타인이 아닌 자신을 위한 하루를 보내는 게 좋겠군요.

73년생 신중하지 않고 급하게 서두르면 큰 손해를 볼 수 있어요. 지혜로운 조언자를 구해보세요. 혼자 해결하기 보다는 누군가의 도움이 절실히 필요한 순간이니 현명하게 움직여야겠군요.

61년생 부부 싸움으로 인해 불쾌할 수 있겠어요. 상대와 대화하는 시간을 가져 보세요. 상대가 원하는 것이 무엇인지 경청하고 배려하는 자세를 보여야 할 때에요.

49년생 믿을 사람 하나 없다더니, 어제의 동지가 오늘의 적이 되어 나의 뒤에 서있네요. 황당함과 막막함에 빠져 있으면 더욱 궁지에 몰릴 수 있으니 정신을 바짝 차리세요.

37년생 가벼운 외출이나 여행을 떠나기에 아주 좋은 날이에요. 가까운 친척이나 자식들의 집에 찾아간다면 즐거운 시간을 보낼 수 있어요.',
'당신에겐 기분 전환이 필요해요. 새로운 일을 시작한다거나 중요한 업무를 처리하기보다는 한발 물러서 주변을 살펴보세요. 다음 기회를 위해 잠시 물러나는 여유가 필요해요.

85년생 혹시나 다가오는 유혹이 있다면 뿌리치세요. 한 번의 실수로 크게 후회할 수 있으니 조심 또 조심하세요. 이번 주에는 늦게까지 외출하는 것을 삼가고 일찍 귀가하세요.

73년생 건강 상태가 좋지 않네요. 몸 상태가 안 좋으니 짜증도 늘어나겠군요. 이번 주는 외출을 자제하고 사람들과의 사소한 다툼도 피하는 것이 가장 좋은 방법이에요.

61년생 피로가 누적되어 몸과 마음이 불편하고 건강이 나빠질 수 있어요. 중요한 업무나 결정할 일이 있다면 다음으로 미루세요. 충분히 휴식을 취해야 좋은 결과가 있을 거예요.

49년생 혹시 약속이 있다면 꼭 나가세요. 대인운이 아주 좋아 적극적으로 사람들을 만나야 해요. 특별한 목적 없이 가볍게 만나면 좋은 결과가 있을 테니 명심하세요.

37년생 이번 주는 기분 전환을 한다는 마음으로 긴장을 풀어보세요. 가벼운 운동이 도움이 될 거예요. 평범한 일상에 감사하며 지친 나를 위해 재충전하는 시간을 가져보세요.',
'준비되지 않은 상태에서 일을 진행하면 실패할 수 있으니 마음을 단단히 먹으세요. 고민이 생겨도 주위의 도움으로 잘 해결될 거예요.

섣부르게 결정하지 않도록 주의하세요.',
'강인한 행동 보다는 유연한 태도가 비즈니스 성공의 길이예요. 좋은 소식도 들려오고, 목적하는 바를 달성할 수 있는 절호의 시기예요. 주저말고 하고 싶은 일을 펼쳐보세요.

85년생 사랑하는 사람이 생기고 가정에 경사가 생기고 학업운이 상승하여 기쁜 일이 생깁니다.

73년생 서두르지 말고 유연하게 문제를 대처해 나가야 합니다. 좀 더 객관적이고 철저한 분석으로 손실을 예방하고 자신의 능력을 키우는데 주력해야 합니다. 노력한 사람은 학문이든 직업이든 자연스럽게 목표를 달성하게 됩니다.

61년생 자신감이 생기는 것은 좋으나 성급한 결정을 자제하고 꾸준히 현 업에 최선을 다해야 합니다. 난관이 닥쳐와도 스스로 극복하고 실패를 경험으로 이겨내면 하반기에 이르러 반드시 목표를 달성하게 됩니다. 애인과 문제가 생기면 바로 타협에 들어가는 것이 최선의 방책입니다.

49년생 부지런히 움직이면 영향력 있는 사람들을 알게 되고 바쁜 나날을 보내게 됩니다. 자신에게 이익과 명예 운이 따를 수 있도록 상황을 판단하고 지혜롭게 움직여야 합니다.

37년생 자만심과 지나친 욕심을 버리고 현실을 직시하면 사사로운 것에서 큰 행복감을 얻게 됩니다. 욕심을 자제하고 냉정하게 생각하며 철저한 분석과 사려 깊은 마음으로 결정해야 이익을 얻게 될 것입니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('tiger','몸의 컨디션이 저조한 상태예요. 가능하면 새로운 변화나 사적인 모임을 피하고 정신적 스트레스를 받지 않도록 조심하세요. 오늘은 일찍 귀가하여 재충전의 시간을 가져보는 건 어떨까요?

86년생 당신 혼자 뒤처지는 기분이 들어 우울하군요. 긍정적인 친구와 시간을 보낸다면 스트레스를 날려 보낼 수 있을 거에요. 영화를 보거나 취미활동을 하기엔 매우 좋은 날이군요.

74년생 경청하고 또 경청해보세요. 자신의 의견보다는 상대의 말을 이해하려고 노력하는 게 좋겠군요. 유연한 태도로 지내다 보면, 반드시 귀한 정보와 귀한 사람을 만나게 될 거예요

62년생 돈거래를 정확히 하고 공과 사를 구분하세요. 지나친 연민으로 인해 오히려 친구를 잃을 수 있어요. 유연하고 지혜로운 대인 관계를 만들어 나가세요.

50년생 몸이 근질거리고 당장 떠나고 싶은 충동이 일어나더라도 오늘만은 참아주세요. 급히 움직이기보다는 조용히 마음을 정리하는 시간을 가지는 것이 좋겠군요.

38년생 그동안 무리하게 일을 진행한 결과가 좋지만은 않네요. 원인을 남의 탓으로 돌리지 마세요. 충분한 휴식과 여유를 갖는다면 더 좋은 결과를 얻을 수 있습니다.',
'상황이 내 뜻대로 진행되지 않으니 답답한 심경이에요. 무언가를 팔고 싶어도 사려는 이가 없으니 애만 태울 뿐이군요. 불안감과 의구심을 자제하고 잠시 관망하는 태도를 가져보세요.

86년생 와우! 칭찬을 받거나 원하는 성적이 나오는 등 어깨가 우쭐할 일이 있겠군요. 오늘은 당신의 매력과 능력이 넘치는 날이니 바삐 움직여 원하는 것을 쟁취하는 게 좋겠군요.

74년생 이별 수가 보이니 인연이 아니라는 생각이 들면 빨리 이별을 고하세요. 시간이 길어질수록 상처만 깊어질 거예요. 이성 문제로 사회 활동까지 방해받지 않도록 조심해야겠군요.

62년생 목표를 조만간 달성할 수 있으니 조급함을 버리세요. 당신으로 인해 주변 사람들이 행복해지고 당신의 능력도 인정받게 될 거에요. 모든 상황이 원만하게 전개되네요.

50년생 사업적으로 금전운이 하락세에요. 하지만 동쪽에서 문제를 해결할 수 있겠군요. 좀처럼 회복될 기미가 보이지 않겠지만 지금 포기한다면 더욱 힘들어질 수 있으니 조금만 더 힘내요.

38년생 걱정은 접어두고 주저 없이 바로 실행해보세요. 아무런 방해도 받지 않고 심신을 달랠 수 있는 멋진 경험을 하게 될 거예요.',
'평범한 일상에 감사한 마음을 가지세요. 비록 생각했던 것보다 상황이 좋지는 않지만 자책하거나 실망하지 마세요. 이번 주에 평소에 먹지 않았던 음식이나 낯선 장소는 피하세요.

86년생 하는 일이 모두 결과가 좋은 수는 없어요. 급할수록 돌아가는 것이 현명한 선택이 될 수 있어요. 하고 싶은 일이 있어도 일을 너무 벌이지 말고 시작한 일이 있다면 꼼꼼하게 마무리하세요.

74년생 이번 주는 컨디션이 좋아 창의적인 아이디어가 떠오르니 늘 메모를 하세요. 성급하지 않게 판단은 뒤로 미뤄야 더 좋은 결과를 얻을 수 있어요. 적극적으로 행동하세요.

62년생 섣부른 판단이 큰 화를 불러올 수 있어요. 어떤 일이든 신중하게 결정하세요. 말과 행동을 조심히 하고 결정을 내리거나 계약할 일이 있다면 다음으로 미루는 것이 좋겠네요.

50년생 보고 싶은 사람이 있거나 미리 약속을 잡은 사람이 있다면 꼭 만나세요. 그 사람이 바로 귀인이에요! 복잡하게 꼬여있는 일을 해결해 주거나 진심 어린 조언을 해줄 거예요.

38년생 친구나 연인과 시간을 보내보세요. 즐거운 대화를 나누며 에너지를 충전할 수 있을 거예요. 어색한 사람들과의 만남은 피하고 진정한 나의 모습을 보여줄 수 있는 사람들과 함께하세요.',
'이번 달에는 능력 밖의 일이 생긴다면 무리하지 말고 한발 물러서 잠시 지켜보세요. 잘못된 인간관계로 인해 구설수에 오를 수 있으니 말과 행동을 조심하는 게 좋아요.',
'어렵게 이끌어 왔던 계약의 성사나 금전적인 이익을 얻게 되네요. 다만, 이성간에 의구심이나, 언쟁이 생겨 가슴앓이를 할 수 있어요. 소중한 상대에게 이해심을 발휘해 보세요.

86년생 타인과 경쟁의식을 버리고 친구와 화합해서 일을 도모해야 무리수가 없습니다. 학업에 열중하면 반드시 대성하는 시기입니다.

74년생 크게 생각하고 현명하게 결정할 수 있는 사색의 시간과 조력자를 찾아나서야 합니다. 자기본위적인 고집을 버리고 타인과 타협하고 소통하며 사회활동을 펼쳐나가야 합니다.

62년생 변화를 꿈꾸며 권태감이 큰 시기이므로 자만심을 조심하고 철저한 준비와 조사 아래 투자를 실행해야 합니다. 이성간에 큰 다툼이나 이별이 생길 수 있으므로 지혜로 사랑을 다스려야 합니다.

50년생 불규칙한 생활습관과 정신적 스트레스로 인한 질병을 조심하고 크게 일을 도모하지 말아야 합니다. 마음이 조급해지는 시기이므로 무모한 도전을 실행할 수 있으니 주변에 지혜로운 조력자를 찾아 조언을 구해야 합니다.

38년생 변화를 시도해 보고 싶은 욕망이 큰 시기이나 전반적인 금전거래에 있어 신중해야 합니다. 하반기로 가면서 고생했던 보람을 크게 느끼게 되고 가정생활도 안정을 찾게 됩니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('rabbit','느긋한 휴식과 사색이 필요한 하루예요. 바쁘고 힘든 일상에서 벗어나 평범함을 만끽하고 싶은 마음이 드는 날이군요. 중요한 안건이나 결정은 내일로 잠시 미루는 건 어떨까요?

87년생 적극적으로 대외 활동에 참여하세요. 당신의 능력을 발휘하고, 인정받을 수 있는 날이니 소신 있는 발언이 중요하겠군요. 기발한 아이디어가 떠오르고 집중력이 강해지니 시험 운도 좋아요.

75년생 노력한 일에서 결실을 볼 수 있겠군요. 자신의 분야에서 공을 세우거나 인정을 받는 날이에요. 오늘만큼은 경쟁자가 없고 모두가 당신의 편이니, 마음이 여유로워지겠군요.

63년생 사업 운이 상승하여 이익이 생기겠군요. 이럴 때일수록 욕심은 버리고 효율적인 지출 계획을 세우세요. 돈을 모으는 데 주력해야 하니 투자나 투기는 금물이에요.

51년생 화해는 빠르면 빠를수록 좋아요. 아무리 노력을 해도 별다른 도움이 되질 않는군요. 관계를 회복하기 위해서 진지하게 대화를 해보는 것이 좋겠군요. 먼저 연락을 해보는 건 어떨까요?

39년생 수입보다 지출이 많아 허울만 좋은 장사를 한 격이군요. 갈수록 상황이 더 나빠질 수 있으니 과감한 결정이 필요한 날이에요.',
'조심스럽게 행동하고 상황을 신중하게 파악한 후 결정해야 손실을 예방할 수 있어요. 매매운이 따르지 않고, 원치 않던 자금이 지출되니 눈앞이 막막해지는군요.

87년생 전체적으로 기운이 떨어지는 날이군요. 그렇다고 기가 죽을 필요는 없어요. 가족이나 친구들과의 만남 속에서 기쁨을 찾을 수 있어요. 당신을 지지해주는 사람들과 함께 하는 게 좋겠군요.

75년생 과거에 연연하지 말고 현재에 충실하세요. 시간을 효율적으로 활용하고 바삐 움직이면, 원하는 것을 얻을 수 있겠군요. 무엇이든 미루지 말고 오늘 안에 해결하는 게 좋겠군요.

63년생 힘들고 어려웠던 일을 해결할 실마리가 보이네요. 멀리서 찾아오는 손님이 당신을 지지해 주고 또한 계약이나 매매 등으로 이익이 생기니 당신이 원하는 것을 얻게 될 거예요.

51년생 빨리 손을 쓰지 않으면 곤란한 상황에서 벗어나기 힘들어요. 더 큰 피해를 보면서 손해를 배상해야 하기 전에 어려움을 해결하세요.

39년생 그동안 앓아 왔던 병이 있다면 오늘 완쾌될 조짐이 보여요. 치료도 중요하지만 마음의 안정을 찾는 것도 중요해요. 오랜만에 가벼운 여행을 해보는 건 어떨까요?',
'잠시 쉬어가며 재충전하는 시간을 가져보세요. 바쁜 일상에 쫓겨 한숨 쉬는 것조차 힘든 상황이에요. 지금은 몸과 마음이 지쳐있으므로 적당한 때를 기다리는 것이 현명해요.

87년생 평화로운 가운데 기쁜 소식이 들려오겠네요. 저축을 시작하면 금전적으로 안정될 거예요. 쓸데없는 지출을 줄이고 저금통장을 최대한 활요하도록 하세요.

75년생 친구들에게 한턱낼 수 있을 만큼 금전운이 좋은 한 주가 되겠군요. 이번만큼은 평소에 돈은 아끼던 사람도 주변 사람들을 돕는 데 써보세요.

63년생 신경 쓰이는 일이 계속 생기네요. 사고파는 일이 있다면 아직은 때가 아니에요. 너무 급하게 일을 처리하면 손해가 따를 수 있으니 여유로운 마음을 가지고 일을 진행하세요.

51년생 금전운이 좋고 어떤 일이든 술술 잘 풀리니 이보다 더 좋을 수 없어요. 부지런하게 움직이세요! 게으름을 피우거나 욕심을 부리면 기회를 놓치게 되니 꼭 명심하시고요.

39년생 가깝게 지내는 사람들의 도움으로 고민거리를 해결할 수 있겠네요. 당신을 돕고자 하는 귀인이 나타나 행운을 안겨 줄 거예요. 힘들더라도 해 볼 만하니 포기하지 마세요.',
'중요한 일이 있다면 적당한 때를 기다리세요. 연애운은 점점 좋아지니 조급해하지 않아도 돼요.

지나친 관심은 오히려 문제가 될 수 있으니 좋아하는 사람이 있다면 천천히 다가가세요.',
'감탄할 정도의 재주를 발휘해서 위기를 극복 하겠네요. 사회활동이 바빠지므로, 다소 가정에 소홀할 수 있어요. 올해는 승진, 영전, 경사, 취업 등의 기쁨이 기다리고 있군요.

87년생 두뇌가 명석해지고 끈기가 생겨 학문에 열중하면 대성할 운입니다. 자신감을 가지고 목표를 향해 정진해야 할 시기입니다.

75년생 금전적으로 안정되고 자기계발 능력까지 뛰어나게 향상되는 시점이므로 능력을 키우는데 집중해야 합니다. 노력만이 자신의 인생을 윤택하고 자신감 넘치게 만들어 줄 것입니다.

63년생 하는 일에서 권태감이 생겨도 근면하게 본 업에 충실하면 반드시 목표를 달성하고 인정받게 됩니다. 발빠른 정보와 기술력, 그리고 성실함으로 승부를 걸어야 합니다.

51년생 목표를 향해 정진하며 중도에 포기하는 일이 없어야 현재의 성공과 번영을 유지해 나갈 수 있습니다. 새로운 투자나 직업 변경보다는 본업에 정진하는 것이 이로우며 간혹 타인과의 다툼이나 과소비로 인한 지출이 생겨날 수 있으니 유념해야 합니다.

39년생 만족스러운 결과물과 행운이 따르는 해이므로 욕심만 부리지 않는다면 경제적으로도 자유로워지고 가정이 평온해 집니다. 많은 노력을 기울이지 않고도 자신의 계획이 실현되므로 자신 있게 움직이면 좋은 결과가 나타납니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('dragon','불안한 마음을 비우면 오히려 기쁜 소식이 들려올 것이니 평정심을 유지하세요. 감정 컨트롤에 힘쓰고 음악을 들으며 정서적 안정을 취해보는 건 어떨까요?

88년생 당신을 돕는 친구, 당신을 걱정해 주는 연인 등 주변의 많은 사람들에게 애정을 받고 있군요.즐겁고 시간이 가는 줄 모르는 하루를 보낼 것이나, 지출이 늘어나니 주의하세요.

76년생 머리가 맑고 명쾌해지는 날이에요. 주변의 도움으로 계획했던 일들이 순조롭게 진행되겠군요. 어려운 문제도 해결되고 오랜 친구를 만나는 등 기쁜 일들이 당신을 기다리고 있군요.

64년생 권태감으로 인한 정신적인 갈등이 생기겠군요. 부부간의 대화가 소홀해지거나 스스로에 대한 회의감이 들 수 있어요. 일상을 탈출하고 싶은 욕구가 강할 때이므로 음주가무를 조심하세요.

52년생 경쟁에서 이긴다 해도 훗날 원한을 살 만한 일들이 생길 수 있겠군요. 진리는 변하지 않으니 우선순위에 따라 일을 진행해보는 게 어떨까요?

40년생 혼자 고민하기보다 자식들과 상의해 보세요. 여럿이 고민하면 더 좋은 결과가 나올 수 있어요. 만남과 인연의 운이 대통하는 날이니 좋은 결과가 예상되는군요.',
'애정운이 안정을 찾으니 기쁜 날이에요. 그러나 비즈니스에서는 지출이 늘어나니 매매 등에서 손실을 줄이기 위해 투자를 신중히 하세요. 지나친 배짱과 도전은 무모함으로 전락할 수 있어요.

88년생 그 어떤 어려운 상황도 당신에게는 문제가 되지 않아요. 당신에게는 위기를 헤쳐나갈 능력이 있어요. 자신만을 위한 시간을 가져보세요. 기발한 아이디어와 계획이 떠오를 거에요.

76년생 애정운이 최상인 하루예요. 미혼자는 소개팅을 하거나 여럿이 모이는 모임에 나가는 것도 좋겠군요. 당신의 매력을 알아주는 상대가 다가올 거예요.

64년생 왕성하게 활동하세요. 주저하지 않고 추진력 있게 진행하면 주변에서 당신을 지지하는 사람도 생겨날 거예요. 또한, 시간을 쪼개서라도 가족과의 시간을 가져보세요.

52년생 와우! 여행을 가거나 외출하기 정말 좋은 날이에요. 소중한 사람들과 소풍을 가거나 직장 동료들과 단합 대회를 떠난다면 모두가 즐거운 시간이 되겠군요.

40년생 능력을 인정받는 기회가 찾아오는군요. 주저하지 말고 적극적으로 기회를 잡으세요. 순리에 역행하지 않는다면 승산이 있어요.',
'이번 주는 인내심을 시험하는 일들이 생길 수 있으니 긴장하세요. 웬만하면 다른 사람에게 너그러운 마음으로 양보하는 것이 좋겠네요. 훗날을 준비하는 한 주를 보내세요.

88년생 다른 사람으로 인해 자잘한 피해를 볼 수 있으니 지출을 피하고 섣불리 약속이나 계약을 하지 마세요. 약속이 있다면 취소하고 일찍 집에 들어가세요.

76년생 좋은 인연을 만나게 되는 운이 찾아왔어요. 만남이나 여행 등 모든 일에 좋은 운이 있어요. 혼자 시간을 가지는 것도 좋지만 이번 주는 바쁘게 보내보도록 하세요.

64년생 시작부터 일이 꼬이니 신경이 예민해지겠군요. 인내심이 어느 때보다도 필요한 한 주가 되겠네요. 다른 사람의 이야기를 흘려듣지 말고 경청해야 좋은 일이 생기게 될 거예요.

52년생 하고 있는 일이 아주 잘 풀리겠네요. 모두 당신이 노력한 결과에요. 이번 주에는 어떤 일을 하건 좋은 결과가 따라오니 집중해서 일을 진행해보세요.

40년생 이번 주에는 가능한 한 일찍 집에 들어가세요! 늦게까지 밖에 있거나 유흥 장소에 가는 것은 피하는 게 좋아요. 즉흥적으로 행동하는 것은 자제하고 조용히 한 주를 보내세요.',
'운이 점점 좋아지고 있으니 준비해온 일이 있다면 이번 달에 시작하세요. 금전적인 이익을 볼 수 있을 거예요.

연애운은 평범해요. 지금 곁에 있는 사람에게 충실하는 게 좋겠네요.',
'본인의 능력으로 문제를 척척 해결하겠네요. 이사를 가거나 장기간 여행을 떠나는 등, 기분 좋은 일들이 생기고 근심이 없어요. 또한 저금이 늘고 비즈니스는 성공을 얻게 될 거예요.

88년생 자신감과 목표가 생기는 시기이므로 합격, 성취, 행운이 따릅니다. 학생은 성적이 오르거나 멀리 원하는 학교에 입학하는 등 끝내 노력한 결실을 맺게 됩니다.

76년생 스스로 변화와 변동을 추구하는 시기이며 본인의 기발한 아이디어로 새로운 사업을 시작하거나 직장에서 능력을 인정받고 승진하는 기쁨이 따릅니다.

64년생 정도를 알고 행동하므로 투자나 재테크 등으로 이익이 생기고 손실이 없습니다. 재산을 증축하는 일에 초점을 맞추고 사행오락은 삼가야 합니다. 이성운도 좋아서 자신이 원하는 이상형과 만나게 됩니다.

52년생 장기간 계획해 왔던 원하는 목적을 달성하기에 좋은 시기이므로 본 업을 게을리 하지 말고 꾸준히 밀고 나가야 합니다. 사회생활에서는 명예를 지키고 승진이나 사업의 확장으로 기쁜 일이 생겨납니다.

40년생 가정이 평온하고 이익이 상당하니 재물을 모으는 일에 주력해야 합니다. 전문가의 도움이나 배우자와 협력하면 이익이 두 배이니 지나친 고집을 내세우지 말아야 합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('snake','중요한 사안은 급하게 결정하지 말고 좀 더 신중하게 처리하세요. 오늘은 기분 전환하기 참 좋은 날이네요. 시간적 여유가 있다면 친구들과 상쾌한 장소를 찾아가 보세요.

89년생 말다툼이 예상되니 애인과의 만남은 내일로 미루는 것이 좋아요. 상대의 마음을 헤아리기 어려우니 누군가의 조언이 필요하겠군요. 친구나 선배의 도움을 받는 건 어떨까요?

77년생 바쁘다는 핑계는 소용이 없으니 오늘만큼은 가족에게 최선을 다하는 게 좋겠군요. 사랑하는 사람들과의 시간은 무엇보다 소중해요. 특별한 추억을 만들기에 좋은 날이군요.

65년생 힘들고 짜증스러운 일들이 도미노처럼 밀려오네요. 힘든 하루지만 극복할 수 있으니 기 죽지 말아요. 의지가 대단한 당신이므로 해결 방법을 모색하게 될 거예요.

53년생 어제의 동료가 오늘의 적이 되어 돌아오니 이로울 것이 하나도 없겠군요. 억지로 밀고 나가는 것보다 한 발 양보하고 물러서서 휴식을 취하는 것도 좋겠군요.

41년생 오늘 외출할 일이 있다면 취소하는 게 좋아요. 기분 좋게 나갔다가 걱정만 더 늘어날 수 있어요. 집에서 피로와 긴장을 푸는 것이 도움이 될 거예요.',
'컨디션이 최상의 상태에요. 이런 날을 평범하게 보내는 것은 불가능한 일! 친구들과 모여 수다를 떤다든지 비즈니스 영업을 하든지 무엇을 해도 기분 좋은 결과가 예상되는군요.

89년생 오늘은 인연의 날이에요. 미팅이나 친구들과의 만남을 미루지 마세요. 특별한 상대를 만나게 될 확률이 높으니 자신감을 가지고 대인관계를 이끌어 가세요. 행복한 하루가 예상되는군요.

77년생 만족할 만한 성과가 기다리고 있군요. 금전운이 좋아 상당한 이익을 볼 수 있으니 투자나 매매 등을 시도해 보는 것도 좋겠군요. 직장에서는 능력을 인정받을 수 있는 하루예요.

65년생 오늘은 화해와 평화의 날이군요. 누군가와 다툼이 있었다면 먼저 화해를 청하는 것이 좋겠어요. 직장 내에서의 미팅이나 중요한 결정 사안도 승산이 있으니 밀고 나가세요.

53년생 모처럼 찾아온 기회를 놓치지 마세요. 주저하는 사이 기회를 놓친다면 후회할 거에요. 늘 하던 대로 소신 있게 행동한다면 문제없으니 걱정하지 마세요.

41년생 설상가상으로 언 땅에 눈까지 내리니 몹시 힘든 하루가 되겠네요. 시간이 지나면 자연스레 해결되니 마음을 비우고 기다려보세요.',
'이번 주에는 쉽게 풀리지 않는 문제가 많이 생길 거예요. 하지만 이 위기를 극복할 능력이 있으니 자신을 믿고 일을 진행하세요. 새옹지마라는 속담을 기억하고 평정심을 가지세요.

89년생 넘어지거나 어딘가에 부딪혀 가볍게 다칠 수 있어요. 일찍 집에서 독서를 하거나 음악, 영화 감상을 하면서 시간을 보내세요. 밖에서 시간을 보내는 것보다 좋을 거예요.

77년생 다니고 있는 직장에서 좋은 소식이 오겠군요. 열심히 노력한다면 반드시 기분 좋은 일이 찾아올 거예요. 금전운이 좋으니 관련된 일이 있는지 소식을 확인해보세요.

65년생 몸 상태가 정말 좋으니 최대한 모든 시간을 하는 일에 쏟아부어야 해요. 집중력이 올라가 일의 성과가 아주 좋을 것으로 예상되네요. 적절한 휴식도 필요하다는 것을 잊지 마세요.

53년생 당신의 운이 점점 좋아지고 있어요. 정신이 맑고 그 어느 때보다 컨디션이 좋은 한 주가 되겠네요. 부지런히 움직여야 더 좋은 결과를 얻을 수 있어요. 게으름은 나중에 피우세요.

41년생 눈에 보이는 이익은 없지만 점점 운이 좋아지고 있어요. 다음 기회를 위해 만반의 준비를 해야 해요. 답답하더라도 조금만 참고 기다린다면 좋은 날이 올 거예요. 희망을 잃지 마세요!',
'자신감 있게 일을 적극적으로 추진하고 투자한다면 좋은 결과를 얻게 될 거예요. 하지만, 시간이 지날수록 나태해질 수 있으니 한 가지 일에만 집중하도록 하세요.',
'자신에게 알맞은 결과물들이 주어지는 기분 좋은 시기예요. 경제적으로 자유로워지고, 원하는 상당한 이익을 얻게 될 것이나, 뜻밖의 지출도 생기니 소비의 균형을 잘 맞추세요.

89년생 당당히 합격, 승진, 새로운 일의 시작 등 모든 면에서 성취하는 기쁨이 따릅니다. 진취적인 마인드와 노력으로 자신의 입지를 확고히 해나가며 금전적인 이익도 생겨납니다.

77년생 독립적인 마인드로 비즈니스나 사회활동으로 매우 분주해지고 그로 인해 다양한 이익과 성취감을 맛보게 될 것입니다. 본인이 노력하고 얻고자 하는 일에서 기쁜 일들이 생겨나므로 중요한 시기를 성실하게 움직여야 합니다.

65년생 생활에 변화가 찾아오고 새로운 사업이나 직장 변경등에서 금전적 이로움이 따르게 됩니다. 단! 친구나 주변인으로부터 질시를 받을 수 있으니 자신의 비밀을 누설하지 말고 때론 침묵으로 감정을 다스려야 합니다.

53년생 숙련된 경험과 지혜를 발휘해서 자신의 주변을 돌보고 평탄한 분위기를 조성해 나갑니다. 경제적으로도 여유롭고 제반사 하는 일들이 수월하게 풀려나가므로 기분도 좋고 가정도 안정적입니다.

41년생 결과적으로는 만족스러우나 돈 문제로 가정에 잠시 불화가 생길 수 있으니 예상 밖의 계획이나 지출을 삼가해야 합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('horse','지루하고 평범함을 거부하고 싶더라도 잠시 참아 보세요. 오늘은 평범함이 돋보이는 날이니 인내와 끈기를 가지고 하던 일을 멈추지 마세요. 일상 탈출은 다음 기회로 미루세요.

90년생 당신을 따르는 친구들이 많군요. 발표나 시험 운도 좋아서 무엇이든 열심히 하면, 좋은 결과를 얻게 되는 하루예요. 바쁜 가운데 보람과 행복을 느낄 수 있겠군요.

78년생 이익보다는 사랑이 중요한 날이군요. 당신을 지지하고 바라봐주는 사람이 있으니 행복해지는군요. 당신에게 엔도르핀이 되어주는 상대를 위해 정성 어린 선물과 만남을 준비해보세요.

66년생 발전과 희망이 있는 날이에요. 당신은 이미 충분한 역량을 지니고 있어요. 새로운 일을 시작하거나 거래를 성사시키는 등 분주한 하루를 보내게 될 거예요.

54년생 오랜만에 좋은 시간을 보내려 하지만 좀처럼 계획대로 되질 않는군요. 만남과 일의 진행에 있어 차질이 생길 수 있으니 계획을 수정하는 것이 좋겠군요.

42년생 자식으로 인한 금전적 지출이 예상되네요. 금액이 상당히 크겠으나 곧 해결되니 너무 걱정하지 마세요. 충분히 휴식을 취하면 건강에는 문제없을 거예요.',
'시간을 들여 자신의 본업에 최선을 다해야겠군요. 오늘은 특히 컨디션이 매우 좋은 날이에요. 직장 동료들과의 원만한 하루가 예상되니 무슨 일이든지 본인의 마음 먹기에 달려있는 날이에요.

90년생 멀리서 반가운 친구가 오거나, 기다리던 연락이 오겠군요. 행복을 느낄 수 있는 최상의 날이에요. 공부나 일도 중요하지만, 스트레스를 해소할 수 있는 여유를 가져보는 건 어떨까요?

78년생 애정 전선에 문제가 생기겠군요. 당신의 짝이 아닐 수 있으니 서둘러 만남을 결정하지 마세요. 중요한 결정이나 약속은 다음으로 미루는 게 좋아요. 말을 아끼고 신중해야겠군요.

66년생 무리한 계획이나 결정은 금물이에요. 가족과 상의를 하거나 주변의 조언을 귀담아들으세요. 독단적으로 움직이면 실수와 후회만 생길 수 있으니 상대의 말을 경청하세요.

54년생 아무리 노력해도 성과가 나타나기 어렵겠네요. 빠르게 상황을 정리하고 새로운 일을 위해 충분한 휴식을 취하며 에너지를 충전해 보세요.

42년생 오늘 외출할 계획이 있다면 가벼운 산책 정도로 끝내는 것이 좋아요. 자동차를 이용할 경우 자칫 사고가 발생할 수 있으니 각별한 주의가 필요한 하루예요.',
'정신적, 육체적으로 모두 힘든 한 주가 될 수 있어요. 참고 참아도 되는 일이 없다면 그냥 받아들이는 것이 정신 건강에 좋아요. 곧 좋은 날이 찾아올 테니 걱정하지 마세요.

90년생 친구, 연인, 동료처럼 평생을 함께해온 동반자에게 서운함을 느끼는 한 주가 되겠네요. 다른 사람에게 의지하기보다는 혼자만의 시간을 갖는 게 도움이 될 거예요.

78년생 좋은 일이 한껏 가득 찬 일주일이 될 거예요. 어려운 고비가 있더라도 주위의 친구가 도와줄 거예요. 한 주 동안 대인관계에 감사함을 듬뿍 느낄 수 있을 거예요.

66년생 스트레스가 조금씩 쌓일 수 있으니 몸과 마음을 편안하게 만들어야 해요. 하는 일이 점점 잘 풀려 걱정은 줄어들 거예요. 이번 주는 밝은 미래를 위해 잠시 쉬어가세요.

54년생 연인과 사이가 나빠질 수 있겠네요. 그 사람의 말투나 행동 하나하나가 마음에 들지 않을 거예요. 하지만 다른 곳에 한눈을 팔면 문제가 생길 수 있으니 정리는 확실하게 하세요.

42년생 이번 주는 집에서 조용히 보내는 게 좋을 것 같네요. 반신욕을 하면서 몸의 긴장을 풀어주는 것도 좋겠네요. 그동안 너무 앞만 보고 달려왔으니 지금은 잠시 쉬어도 괜찮아요.',
'스스로 판단하고 진행한다면 좋은 결과가 있을 거예요. 목적을 달성하기 딱 좋은 시기이니 포기하지 말고 꾸준히 노력하세요.

즐거운 일이 생기니 마음이 안정되겠네요.',
'무모한 도전만 피하면 하는 일에서 결실을 맺을 수 있어요. 떠나고 싶은 충동으로 마음이 들떠 있어요. 불안정한 문제들과 해결되지 않은 사건, 미정리 서류 들을 깨끗이 정리하세요.

90년생 학업에 전념할 수 있는 여건이 만들어지니 학문에 몰두하면 성공합니다. 건강운도 좋아 즐거움이 넘쳐납니다.

78년생 불안정하고 위축된 심리로 인해 권태감이 빨리 생겨나고 중도에 학과나 직업을 변경하는 경우가 생길 수 있습니다. 무엇이 최선의 결정인지 심각하게 생각하고 진지하게 결정해야 합니다. 연애에 있어서도 바람기가 동요하거나 상대방에게 강요와 간섭이 지나쳐서 언쟁이 생겨날 수 있습니다.

66년생 하는일이 더 번창할 수 있도록 부지런히 움직여야 하며 장기간 여행등을 삼가하고 연인과의 애정 또한 특별히 신경써야 합니다. 복잡하고 계획도 많고 많은 사람을 만나는 가운데 현실적이고 냉정하게 움직여야 손실이 없고 이익이 따르게 됩니다.

54년생 불필요한 변화와 변동을 조심하고 위급상황에서는 상황을 재빨리 판단하고 수습하며 타인과 트러블이 생기는 일을 피해야 합니다. 가정의 화목이 행복의 근원이라는 생각아래 움직여야 하며 비즈니스에서는 인맥 관리에 힘쓰며 대의명분을 중요시 여겨야 합니다.

42년생 정도에 어긋나지 않는 삶을 유지하면 안락하고 화목한 생활을 유지할 수 있습니다. 지나친 과욕을 자제하고 현재의 것을 고수하는데 주력해야 합니다. 간혹 빠른 결단력으로 인해 손실이 생기는 부분을 재정비하고 현재의 위치를 사수하기 위해서는 현명한 처세술이 필요합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('sheep','무엇보다 중요한 것은 기운을 보강하는 일이에요. 경쟁에는 승산이 있으니 큰 걱정은 하지 마세요. 확신이 서지 않는 일이 있다면 자존심은 잠시 뒤로하고 주변의 현명한 조력자에게 자문해보세요.

91년생 잘못된 만남으로 힘든 하루가 될 수 있겠군요. 친구든 애인이든 만나면 불화와 다툼의 연속이니 잠시 서로 간의 휴식 기간을 가져보는 것도 좋겠군요. 혼자 감당하기 어렵겠군요.

79년생 다른 사람과 일을 도모하지 않는 게 좋아요. 여럿이 모여 계획을 세워봐도 결국 시간 낭비만 될 거예요. 무엇이든 혼자 결정하고 단독으로 움직여야 성과가 클 거예요.

67년생 시간만 낭비할 수 있겠어요. 신중하게 처신해도 본전이면 다행이네요. 업무적인 스트레스는 친구들과의 술자리에서 풀어보세요. 뜻밖의 귀한 정보를 얻을 수 있어요.

55년생 와우! 매입하자마자 금액이 급상승하겠어요. 조금 기다리면서 가격의 상승폭을 주시하고 파는 것은 조금 뒤로 미루세요. 조급함을 버린다면 좋은 결과가 있을 거예요.

43년생 손님에게 감기가 옮거나 좋지 못한 소식을 들을 수 있어요. 오늘은 사람을 초대하거나 외출하는 일을 자제하고, 약속과 방문은 다음으로 미루는 것이 좋아요.',
'비즈니스에서는 진행해 왔던 일들이 순조롭게 발전하고, 저조했던 애정운도 점차 풀리고 있군요. 단, 건강상 문제가 발생할 수 있으니 스트레스로 인한 질병을 조심해야겠군요.

91년생 노력해 온 일에서 문제가 하나둘씩 생겨나니 인내심이 한계에 도달하겠군요. 그렇다고 포기할 순 없겠지요. 끈기를 발휘해서 반드시 오늘 안에 문제를 해결하세요.

79년생 최상의 컨디션이군요. 자신 있게 일을 진행하면 승산이 있으니 지체하지 마세요. 기발한 아이디어가 떠오르고 설득력이 상승하니, 능력을 인정받는 기분 좋은 하루가 되겠군요.

67년생 일에서 당신을 방해하는 사람이 생기겠어요. 갑작스러운 사건으로 충격을 받을 수 있으나 현명하게 대처하면 감당할 수 있어요. 빨리 해결책을 찾아서 일을 수습하는 것이 중요해요.

55년생 오늘은 불안한 마음을 잊고 즐기세요. 인간적인 모습으로 다른 사람들과 어울리고 즐거운 분위기를 이끌어나간다면 복이 저절로 들어올 거예요.

43년생 마음의 안정을 찾는 것이 무엇보다 중요한 날이에요. 조용히 독서를 하거나 목욕을 하며 휴식을 취하는 것도 좋아요.',
'특별한 성과를 내기 힘드니 모든 일을 처음부터 다시 시작한다는 마음으로 점검하세요. 너무 조바심을 내면 될 일도 망칠 수 있어요. 외출을 자제하고 마음의 여유를 찾으세요.

91년생 이번 주에는 친구나 가족에게 도움을 받게 되겠군요. 어려운 상황을 재치 있게 벗어날 기회가 와요. 진행하기 힘들었던 일들이 조금씩 좋아지니 좀 더 집중하도록 하세요.

79년생 여행을 떠나기에 완벽해요. 집에 있는 것보다는 가까운 교외라도 나가 즐거운 시간을 보내세요. 여행지에서 좋은 일이 생겨서 흥미진진한 한 주를 보낼 수 있을 거예요

67년생 순서대로 일을 처리해야 일이 잘 해결돼요. 좋은 성과를 위해 마음을 급하게 먹지 말고 실수 없이 처리해야 해요. 계획한 일은 무리 없이 해결되니 너무 걱정하지 마세요

55년생 이럴 수 있나 싶을 정도로 애정운이 정말 안 좋네요. 연인과 싸움은 절대적으로 피하세요. 사랑을 지키는 일에는 희생이 필요해요. 이번 주는 상대방을 최대한 배려해주세요.

43년생 큰돈에 대한 기대는 접으세요. 생각했던 돈은 들어오지 않지만 적은 액수라도 들어오니 너무 걱정하지 마세요. 원하는 모든 것을 다 이룰 수 없다는 것을 다시 한번 깨닫게 되네요.',
'이번 달에는 가까운 사이여도 조심스럽게 대하세요. 몸이 아프거나 사랑하는 사람과 이별할 수 있으니 현명하게 대처해야 해요.

노력에 따라 운이 좋아지니 포기하지 마세요.',
'신중함과 타이밍이 중요해요. 과거의 것을 과감하게 청산하거나 재정비, 검토등 철저한 관리가 필요해요. 잠시 정체되는 운이 따르더라도, 최선을 다하면 반드시 기쁜 일이 생길 거예요.

91년생 학생은 다니던 학교가 마음에 들지 않거나 전반적인 갈등이 생기는 시점이므로 자아성찰이 중요한 시점입니다. 이성과의 데이트에서도 권태감이 생기므로 만남과 이별이 반복될 수 있습니다.

79년생 승진, 새로운 사업의 시작 등 끝내 자신이 원하는 결실을 맺게 될 것입니다. 단 권태감이 생겨 쉽게 일을 포기하거나 직장의 변동 등이 생기기 쉬운 시기이니 자제력을 길러야 합니다.

67년생 능력을 인정받으려 하기 보다는 능력을 키우는데 주력해야 합니다. 마음을 다스리고 한 가지 일에 끝까지 최선을 다하면 문제가 사라지고 원하는 답을 얻게 됩니다.

55년생 정보력과 집중력을 길러 본 업에 충실해야 할 시점이며 분수에 넘치는 투자 등은 자제해야 합니다. 가족간에도 의기투합이 잘 안되어 마찰이 생길 수 있으니 대화를 거절하지 말아야 합니다.

43년생 주변에 흔들리지 말고 주관을 정확하게 세워 끝까지 밀고 나가면 반드시 성취하는 기쁨이 따릅니다. 다만 투자나 투기 등은 시기상조이므로 돈이 흩어지지 않도록 지켜나가는데 주력해야 합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('monkey','변화와 충동적인 행동이 따르는 상황이 전개되니, 자제력과 유연한 태도가 필요하군요. 문제의 원인을 파악하지 못해 금전적인 손실을 보거나 명예가 추락하는 일이 발생할 수 있으니 조심하세요.

92년생 와우! 애정운이 좋은 하루예요. 망설이지 말고 좋아하는 상대에게 조금씩 접근해 보세요. 무언가 시도를 해야 해요. 생각지도 못했던 행복한 하루를 보낼 수 있어요.

80년생 와우! 당신의 매력이 진가를 발휘하겠군요. 솔직하게 마음을 털어놓으면 상대방의 마음을 사로잡을 수 있어요. 사랑의 여신이 당신 곁에 있으니 적극적으로 움직여보세요.

68년생 오랜만에 부모님 댁을 방문하면 어떨까요? 일적인 스트레스를 뒤로하고 당신을 사랑하고 지지해 주는 이들과 함께 하는 시간을 갖는 것이 필요해요. 중요한 사안은 가족과 의논하세요.

56년생 오늘은 재물운이 좋아요. 재물과 관련해서 이른 아침부터 좋은 소식이 들려오겠네요. 평소보다 기분 좋게 아침을 시작하세요.

44년생 오늘은 사랑하는 사람들과 즐거운 시간을 보낼 수 있는 날이에요. 마음속에 담아둔 감정이 있다면 오늘 풀어보세요. 인연이 끈끈해질 수 있는 기회가 될 거예요.',
'행복한 하루가 기대되는군요. 오늘은 그동안 지치고 힘들었던 당신을 위한 특별한 날이에요. 기분 좋은 소식도 들려오고 사랑하는 사람과의 특별한 교감도 예상되는군요.

92년생 반가운 소식으로 고민이 해결되는 하루군요. 평소 긍정적으로 살아온 당신! 주변에서 도와주는 친구도 생기고, 좋아하는 사람과도 좀 더 가까워질 수 있는 하루가 예상되는군요.

80년생 사랑의 여신이 부지런히 움직이니 솔로는 주변의 도움으로 좋아하는 사람을 만날 수 있겠군요. 인연은 멀리 있지 않고 아주 가까운 곳에 있으니 적극적으로 찾아 나서 보세요.

68년생 그동안 힘들었던 일이 좋은 결실이 되어 돌아오네요. 귀인의 도움을 받아 계획하는 모든 일이 순조롭게 풀리겠군요. 특히 가족이나 가까운 지인의 격려와 조언이 큰 힘이 될 거에요.

56년생 모든 면에서 유리한 상황이네요. 하지만 다른 사람의 인간적인 면을 무시한다면 이런 상황을 오래 유지할 수 없으니 말과 행동을 조심하세요.

44년생 생각지도 않은 사람에게 금전적인 도움을 받을 수 있어요. 겸손한 자세로 도움을 받아들이면 앞으로 더 좋은 관계가 될 수 있어요. 언젠가 갚아야 할 돈이니 신중하게 결정하세요.',
'마음먹은 대로 일이 잘 풀리지 않는다고 해서 감정적으로 대하면 큰 손해를 보게 될 거예요. 감정을 앞세워 일을 처리한다면 상황을 더욱 악화시킬 뿐이라는 걸 기억하세요.

92년생 여행을 떠나기에 이보다 더 좋을 수 없어요! 여행 운이 따르는 한주가 되겠네요. 당신이 원하는 대로 일이 진행되니 사업적으로 출장을 떠난다면 좋은 결과가 있을 거예요.

80년생 활발한 활동을 하는 것이 좋겠네요. 특히, 출장 때문에 먼 곳으로 여행을 떠난다면 좋은 운과 함께 맡은 일이 잘 해결될 거예요. 기쁜 마음으로 돌아올 수 있겠네요.

68년생 돈 쓸 곳이 많아지겠네요. 들어오는 돈은 없으니 적당히 써야 해요. 크게 걱정할 정도는 아니지만 아낄 수 있을 때 아끼는 것이 가장 좋아요. 돈을 쓸 때는 한 번 더 생각하세요.

56년생 고민하는 일이 있다면 당장 떨쳐버리세요. 사서 걱정하지 말고 지금이라도 친구 또는 연인과 즐거운 시간을 보내려고 노력하세요. 그러면 이번 주는 별다른 일 없이 지나갈 거예요.

44년생 이번 주에 나를 도와줄 사람을 기다리고 있나요? 아직은 때가 아니니 지금 하는 일에 너무 욕심을 부리지 마세요. 차근차근 진행하다 보면 도와줄 사람이 나타날 거예요.',
'금전적 여유가 생겨 생활하는데 걱정이 없겠네요. 지금 진행하고 있는 일에도 좋은 결과가 따를 것이니 끝까지 밀고 나가세요.

오랜 시간 기다렸던 일이 이루어지고 운이 좋은 달이에요.',
'노력에 대한 정당한 대가와 대우를 받게 되겠네요. 타인의 협조가 따르고 여건이 안정적으로 변모하는 시기이므로, 철저한 점검과 준비아래 움직이면 새로운 사업도 번창하게 될 거예요.

92년생 인생의 변화가 생기는 시점이며 새로운 사랑이 시작되고 있으며 주위에 이성이 많아 행복한 시기입니다.

80년생 영광과 보람을 맛보는 시기이므로 학생은 성적이 오르고 장학금을 받거나 채용, 합격의 기쁨을 누리게 될 것이며 기쁜 소식을 듣게 됩니다. 임기응변에 강하고 결단력이 생기는 시점이므로 풍부한 아이디어를 이용해서 자신만의 전문적인 공부나 꿈을 선택하고 정진해 나가게 됩니다.

68년생 돈을 굴리는 기술을 터득하게 되고 본 업에 충실하면서 자신의 입지를 확고하게 만들어 나가게 됩니다. 스스로 슬기로워지고 노력하는 자세로 임하기 때문에 목표한 바를 달성하는 것은 시간문제입니다.

56년생 지혜를 발휘하고 노력에 상응하는 대가를 얻게 되며 주변에 도움을 주는 의로운 사람이 생겨납니다. 재테크나 사업, 그리고 직장내 승진 등 본인이 원하는 소망이 쉽게 이루어집니다. 직접 나서서 지휘하고 자력으로 성공을 거두어야 할 시기입니다.

44년생 가정이 평화롭고 사랑이 넘쳐나며 행복감을 느끼게 됩니다. 영화로움이 가득하므로 영정, 발전, 성공, 새로운 일 등으로 기분 좋은 일이 생겨납니다. 자신의 능력과 노력으로 이루어낸 성공을 맛보게 됩니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('chicken','진퇴양난! 사태가 무척 심각하군요. 상대의 기분을 상하게 한다면 정신적 갈등이 깊어지고 금전적 손해도 생길 수 있겠군요. 잠시 자기 자신을 뒤돌아보며 지혜롭게 대처하세요.

93년생 생각지도 못했던 수입이 생겨요. 학업 또한 바라던 대로 성적이 오르거나 인정을 받는 기쁨이 따르는군요. 오늘은 짝사랑하는 사람에게도 고백하기 좋은 최상의 날이에요.

81년생 기다리던 반가운 소식을 들을 수 있겠군요. 그동안 미뤄왔던 일을 진행해도 무리가 없겠군요. 예리한 판단력과 넘치는 에너지를 효율적으로 활용해보는 건 어떨까요?

69년생 사고파는 일에서 유리하니 분주하게 움직여야 해요. 당신의 지혜와 순발력으로 이익을 도모하기에 적합한 날이에요. 중요한 사안은 스스로 결정하세요.

57년생 갈등은 대화로 풀어야 해요. 서로를 진심으로 이해한다면 더 이상의 힘듦은 없을 거예요. 상대방의 사과를 기다리기보다는 먼저 화해를 청해보세요.

45년생 소문난 잔치에 먹을 것이 없다더니, 별다른 소득도 없는 일에 피곤해지는 하루예요. 이럴 때일수록 편안한 마음으로 상황을 지켜보는 것이 좋아요.',
'정신적 육체적으로 컨디션이 좋지 않아요. 직장 동료들과의 신경전도 예상되는군요. 무슨 일이든지 본인의 마음 먹기에 달려있다는 것을 명심하고 움직이면 상황이 역전될 거에요.

93년생 앗! 믿는 도끼에 발등이 찍힐 수 있는 날이군요. 오늘은 오해나 다툼이 생길 수 있으니 약속을 미루는 것이 좋아요. 방 청소를 하거나 가족들과 함께 하루를 보내기엔 최상의 날이에요.

81년생 젊은 혈기로 인해 직장에서 다툼이 생길 수 있으니 조심하세요. 자제력을 기르고 성실하게 움직이면 주변에서 인정받을 수 있어요. 애인이나 친구들과 만나 에너지를 충전해 보세요.

69년생 몸과 마음은 바쁜데 이익은 따르지 않네요. 잠시 스스로를 돌아보며 필요하다면 가족과 의논해 보세요. 생각지도 못했던 아이디어나 해결책을 찾을 수 있어요.

57년생 정신없는 하루를 보내겠군요. 사방에서 물량이 쏟아져 나오고 있으니 발 빠르게 움직여 대응하세요. 적극성이 빛을 발하니 최대한 많이 물건을 잡아두면 좋아요.

45년생 다른 사람을 탓하면 몸과 마음만 더 지칠 뿐이니 절대 누군가를 탓하지 마세요. 마음을 내려놓고 건강을 살펴보세요. 무엇보다 건강이 중요하다는 것을 잊으면 안 돼요.',
'가능성이 없는 일에 더 이상 매달리지 마세요. 무모한 도전은 멀리하는 편이 좋아요. 때로는 피해 가는 전략도 필요한 법이니 마음을 편하게 먹고 잠시 쉬어가도록 하세요.

93년생 포기할 때를 알면서도 계속된 기다림과 초조함으로 모든 일을 넋 놓고 기다리고 있군요. 건강까지 안 좋아질 수 있으니 규칙적인 생활을 하도록 노력하세요.

81년생 손해를 볼 수도 있으니 말을 할 때 한 번 더 생각하고 말하세요. 직장 동료들이나 친한 친구들과의 관계가 작은 마찰로 나빠질 수 있으니 조심 또 조심하세요!

69년생 세상에 홀로 떨어져 있는 듯이 매우 외롭고 쓸쓸한 한 주가 될 수 있어요. 이번 주는 혼자 시간을 보내지 말고 외출이나 나들이를 계획해보세요. 약속을 자주 가져야 해요.

57년생 혹시 다른 사람에게 관심이 생겨 지금 바람을 피우면 정말 큰일 날 수 있으니 자제하세요. 여기저기서 유혹을 해도 바위처럼 꼭 붙어있어야 무사히 넘어갈 수 있어요.

45년생 이번 주부터 운이 술술 잘 풀릴 거예요. 가까운 친구나 친척으로부터 좋은 소식을 전해 들을 수 있겠네요. 가족과의 시간이 지친 당신에게 행복한 에너지가 되어 줄 거예요. ',
'고민이 점점 사라지니 급하게 서두르지 말고 하던 대로 성실하게 움직이세요. 걱정하던 문제가 해결되고 좋은 결과를 얻을 수 있을 거예요.

적극적으로 행동하세요.',
'굴곡이 없으므로 완벽한 성과물을 얻을 수 있어요. 본인의 지식이나 기술적 형태의 이익이 따르네요. 단, 가슴앓이를 할 수 있으므로, 주변에 나를 도울 수 있는 조언자를 찾아보세요.

93년생 멋진 이성을 만나게 되고 새로운 취미 활동으로 활력이 넘치고 노력하면 순조롭게 모든것을 얻게 됩니다.

81년생 결혼은 다소 정체되거나 내 짝이 아닌 연분을 만날 수 있으니 급히 서두르지 말아야 할 것입니다. 사회활동에서 부터 자신의 본업은 탄탄대로를 달리게 될 것이나 애정전선이 불안정한 기류가 흐르므로 지혜롭게 처신해야 합니다.

69년생 자신의 능력을 인정받는 계기가 생겨나고 어렵게 진행되었던 일이 하나 둘 씩 풀려나가게 됩니다. 다만 애정적인 측면이 불안하므로 자기본위적인 행동을 자제하고 진심을 다해 상대를 대해야 할 것입니다.

57년생 병치레가 거의 없으며 꾸준한 자기발전과 더불어 사업상 이익이 생겨나는 시기 입니다. 대인관계에서 적을 만들지 말고 비즈니스 능력을 키우며 의리와 신용으로 상대를 대하면 완벽한 성공을 도모하게 될 것입니다.

45년생 시간을 쪼개어 하루를 성실하게 살아간다면 모든 문제점이 자연스럽게 사라지고 본인이 원하는 안정된 생활을 영유하게 됩니다. 조급한 마음을 버리고 때를 기다리며 능력을 키우는데 초점을 맞추어야 합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('dog','과거를 반성하고 미래에 대한 계획을 세울 시간이 필요한 날이에요. 만약 실패했다면 피해를 최소한으로 줄이는 것이 최선이에요. 자기 자신과 대화하는 시간을 가져보세요.

94년생 학생의 경우 오늘 같은 날은 집중력이 저하되고, 수업 시간이 지루하게 느껴지는 날이에요. 긍정적으로 생각하고 마인드 컨트롤에 집중하세요. 오늘 할 일을 절대로 내일로 미루지 마세요.

82년생 천생연분을 만나는 운명의 날이에요. 미팅이나 소개팅이 들어온다면 절대 거절하지 마세요. 새로운 인연을 만나 가슴이 뛰고, 꿈에 그리던 이상형을 만나게 될 거예요.

70년생 당신을 도와줄 사람이 보이지 않는군요. 혼자 해결하기 위해 노력하겠어요. 하지만 인내심과 지구력을 발휘한다면 분명 소기의 목적을 달성할 수 있을 거예요.

58년생 오늘은 만나면 싸울 확률이 높아요. 신경전으로 인해 서로가 더욱 피곤해질 수 있으니 다른 날로 약속을 잡아보세요.

46년생 서쪽에서 귀인이 나타나 금전적인 도움을 줄 거예요. 오전에는 힘들고 암담한 일이 있더라도 걱정하지 마세요. 시간이 지나면 거짓말처럼 모든 일이 해결되어 있을 거예요.',
'정신적으로 의구심이 생기거나 일상생활에서 변화를 추구하게 되는 하루예요. 자신에 대한 답답함과 권태감이 생길 수 있어요. 또한, 호흡기 질환이 염려되니 주의하세요.

94년생 오늘만큼은 다툼을 피하고 편안한 관계를 유지하는 게 좋겠군요. 친구든 애인이든 상대의 말에 귀 기울이는 배려심이 필요한 하루예요. 베푼 만큼 당신에게 행복한 일이 생길 거에요.

82년생 금전 운이 최상이군요. 재물을 유용하게 활용하는 방법을 터득하게 되는군요. 오늘은 조력자가 나타나고 열정이 가득하니 매매나 투자 등으로 이익을 창출할 수 있겠군요.

70년생 다툼이 있었던 상대로부터 중재가 들어오면 적당한 선에서 타협을 보세요. 구설과 소송에 연루되지 않도록 슬기롭게 처신하세요. 불필요한 갈등이 당신의 업무에 큰 지장을 줄 수 있어요.

58년생 생각보다 일이 빠르게 진행되네요. 의사 결정은 신속하게 하는 것이 좋겠어요. 오늘은 사고파는 것이 모두 길하니 좋은 결과를 이끌어 내보세요.

46년생 혈액순환이 잘 되니 안색이 좋아지네요. 심신이 편안한 하루를 보내기에 좋은 날이에요. 사랑하는 가족, 친구, 연인과 함께 즐거운 시간을 보내보세요.',
'이번 주는 좀 애매하네요. 모든 일이 잘 풀릴 것 같으면서도 결국 좋은 결과로 이어지지 않네요. 힘들겠지만 이것 또한 하나의 과정이니 마음을 편하게 먹고 긍정적으로 생각하세요.

94년생 천 리 길도 한 걸음부터! 마음만 앞서서 여러 가지 일들을 그르칠 수 있으니 주의하세요. 마음의 평정을 유지하세요. 서점에 들러 책 한 권을 사는 마음의 여유가 필요해요.

82년생 절대 감정적으로 행동하지 마세요. 사소한 일이 큰 싸움으로 번질 수 있어요. 내 말이 항상 맞는다는 생각을 버리면 마음이 훨씬 편해질 거예요. 배려심을 기르세요.

70년생 이번 주만큼은 약속을 잡지 말고 혼자만의 시간을 가져보세요. 마음의 여유를 찾아야 지친 마음을 달래줄 수 있어요. 약속이 있다면 다음으로 미루는 것이 좋겠네요.

58년생 건강이 아주 좋으니 열심히 돌아다니세요! 이번 주는 가능한 한 활발하게 활동하는 게 좋아요. 그동안 해결하지 못한 일들이 쉽게 해결되니 걱정하지 말고 진행해보세요.

46년생 누구의 잘못인지는 중요하지 않아요. 하나부터 열까지 따진다면 피곤할 뿐이에요. 들어오는 돈은 적고 지출할 일만 생기니 점점 짜증이 날 수 있어요. 좋은 일만 생각하도록 하세요.',
'이번 달에는 마음의 중심을 잘 잡으셔야 해요. 직장인은 이직을 삼가고 학생은 계획을 세워 어수선한 분위기에서 빠져나오세요.

어렵거나 불리한 일이 있다면 다음으로 미루는 게 좋아요.',
'과거를 청산하고 새롭게 재도약하는 시기예요. 새로운 기쁜 소식이 기다리고 있어요. 기혼자는 가정에 경사가 있고, 미혼자는 청혼이나 약혼의 기쁨이 따르게 될 거예요.

94년생 자신감이 넘치는 한 해가 되고 자신감을 얻고 열성을 다하니 보람을 느끼게 됩니다.

82년생 고난을 겪은 후 얻는 즐거움이 따릅니다. 학과를 바꾸거나 이직, 환경변화 등 새로운 경험을 하게 되고 그로 인해 자아성찰의 시간을 갖게 됩니다. 성취하는 기쁨이 따르므로 시험 합격이나 본인이 간절히 원하는 일에서 결국은 소망을 이루게 됩니다.

70년생 분쟁이 생길 수 있으나 커다란 재난은 없으며 노력한 일에서 성과가 나타나고 결실을 맺게 됩니다. 본인이 꿈꿔왔던 큰 이익은 아니나 성실하게 살아온 만큼 대가를 얻게 됩니다. 애정적인 측면이 밝게 비추고 있으므로 본인의 의지만 있다면 즐거운 데이트가 예상됩니다.

58년생 마음이 급할수록 때가 오기를 기다리며 능력을 키우는데 집중해야지 섣불리 환경을 바꾸거나 새로운 사업을 시도하는 것은 무리수입니다. 인내와 냉정한 판단력은 곤란으로부터 벗어나는 데 필수입니다.

46년생 자만심과 욕심을 버리고 금전을 지켜나가는데 주력해야 합니다. 상황에 따라서 자신이 고수해왔던 마인드를 바꾸고 가족과 의논하고 결정하는 것이 본인에게 이롭게 작용합니다.'); 

INSERT INTO T_LUCK (NAME, TODAY, TOMORROW, THISWEEK, THISMONTH, THISYEAR) 
VALUES ('pig','무엇을 하든 본인에게 유리한 상황이 전개되는군요. 특히 매매 운이 아주 좋아요. 거래는 순조롭게 진행되는 운이니 자신있게 진행해도 무방하겠군요.

95년생 원하는 것을 얻지 못하는 상황 때문에 마음이 불안정한 상태군요. 오늘만큼은 친구나 선배 등 주변의 조언을 귀담아들으세요. 의외의 성과를 얻을 수 있어요.

83년생 가족들의 건강과 마음을 살펴보고, 당신의 즐거움과 걱정도 이야기해 보세요. 가족들의 격려와 위안에 힘이 날 거예요.

71년생 하락세를 타고 있군요. 신중하게 움직여도 결과가 기대 이하라면 빨리 포기하세요. 새로운 일이나 새로운 사람들과의 만남에 이익이 있네요.

59년생 복잡한 마음을 정리하고 긴장을 푸세요. 주변 사람들과는 부드러운 관계를 유지하는 것이 가장 좋아요. 다툼으로 인한 이별할 수 있으니 말은 신중하게 하세요.

47년생 금전운이 정말 좋은 날이니 은행을 방문한다면 좋은 일이 생길 수 있어요. 계획적으로 움직인다면 걱정하고 있던 일은 잘 해결될 수 있어요.',
'조금 느긋한 자세로 행동할 때 원하는 것을 얻을 수 있어요. 성공이나 실패와는 무관한 하루이니 절대 무리수를 두지 마세요. 가족 혹은 사랑하는 사람과 시간을 보내기에는 최상의 날이에요.

95년생 사소한 일로 서로 트집을 잡는다면 생각지도 못한 다툼이 날 수 있어요. 내일이면 분명 후회할 일들로 예민해지지 마세요. 오늘은 무조건 상대방에게 져 주는 것이 답이에요.

83년생 어떤 일을 진행하든 서두르지 말고, 객관적인 관점에서 상황을 지켜보는 게 좋겠군요. 거래나 계약 등은 순조롭지 않으니, 주변의 도움을 받는 것도 좋은 방법이에요.

71년생 마음의 여유가 없는 상황인데 도움을 청하는 사람들이 많군요. 피곤하고 바쁜 가운데 타인과 말다툼이 생기면 상대방에게 큰 상처를 줄 수 있으니 조심하세요.

59년생 한 우물만 제대로 파면 승산이 있어요. 새로운 일보다는 지금 하고 있는 일에 집중하는 게 좋겠군요. 계획한 대로만 한다면 무난한 하루가 될 거예요.

47년생 몹시 신경 쓰는 일이 있지만 생각보다 결과가 좋지 않네요. 건강이 나빠질 우려가 있으니 마음을 비우고 미래를 준비해보세요.',
'평범한 한 주가 되겠네요. 특별히 기쁘거나 슬픈 일은 없을 거예요. 한편 중요한 일을 결정하거나 돈거래할 일이 있다면 잠시 뒤로 미루세요. 일찍 집에 들어가 쉬는 시간을 가지세요.

95년생 이번 주에는 당신의 넓은 마음과 인내심을 보여줘야 해요. 참아야 할 일들이 종종 생기니 마음을 다스리고 쉽게 화를 내지 마세요. 참는 자에게 복이 와요.

83년생 아주 좋은 컨디션으로 한 주를 시작해서 힘이 넘치겠군요. 얼굴에 미소가 떠나지 않을 거예요. 많은 사람들을 만나보세요. 하고 있는 일이 더 잘 풀릴 거예요.

71년생 섣부른 결정이나 말과 행동을 조심해야 큰일을 피할 수 있어요. 한마디의 말실수로 사람들 앞에서 망신을 당할 수 있어요. 말할 때 꼭 한 번 더 생각하고 이야기하세요.

59년생 나도 모르게 한 이기적인 행동 때문에 상대방이 떠나갈 수 있어요. 본인 잘못이라 누구에게 화풀이할 수도 없을 거예요. 말과 행동을 조심하고 되돌아보는 시간을 가지세요.

47년생 이번 주에 누군가와 싸움이 날 것 같다면 꼭 피하세요! 시간만 낭비하고 전혀 도움이 되지 않아요. 때로는 지는 게 이기는 거예요. 여유를 가질 때 더 좋은 방법이 생길 거예요.',
'이번 달은 신중하게 행동하세요. 과한 욕심은 버리고 부지런히 움직이면 행운이 따를 거예요.

노력하지 않으면 상황이 나빠지지만, 미리 준비한다면 좋은 결과를 얻게 돼요.',
'물질적 풍요로움과 자신감을 얻게 되겠군요. 사업이나 연애, 건강도 별 무리가 없으니, 왕성한 활동을 펼쳐 나가겠네요. 합격, 승진이나 명예 운이 따르고 하는 일에 막힘이 없어요.

95년생 학생은 학문에 열중하면 대성할 운이 따르나 이성으로 인해 근심이 생길 수 있으니 한 상대에게 너무 집착하지 말아야 합니다.

83년생 자신이 오랫동안 계획해 왔던 일에서 하나 둘씩 결과가 나타나고 걱정이 사라지는 순간이 찾아옵니다. 특히 학업이나 직장등의 일로 고민이 있었다면 노력한 만큼 대가를 얻게 되는 기쁨이 따릅니다. 단, 애정적으로는 자만심으로 인해 진정한 상대를 놓칠 수 있으니 상대에 대한 배려를 아끼지 말아야 합니다. 멀리 여행을 가거나 반가운 친구를 만나는 등 행복한 날들이 예상됩니다.

71년생 회사에서 승진이나 사업의 비약적인 발전, 그리고 소망하는 일이 자연스럽게 성취되는 기쁨이 따릅니다. 이성 운이 매우 좋아 미혼자는 멋진 데이트를 진행하게 되고 기혼자는 가정에 경사가 생기거나 자연스럽게 가법이 세워져 자녀들이 바르게 성장합니다.

59년생 하는 일이 진전되면서 왕성한 활동력으로 목표를 성취하는 기쁨이 따르고, 사회적으로 입지를 확고히 하는 계기가 마련됩니다. 가정에 경사가 따르면서 배우자와도 각별한 정을 더욱 느끼게 되고 믿음으로 사랑을 이끌어 나갑니다.

47년생 마음도 몸도 편안한 가운데 자연스럽게 가정이 화목하며 영화로움이 도래하는 행복한 한 해입니다. 명예롭고 경제적으로 자유로워지며 스스로 보람과 안정감을 느끼게 됩니다.'); 