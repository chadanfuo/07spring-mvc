package service;

import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.naming.directory.SearchControls;

import org.springframework.stereotype.Component;

import net.madvirus.spring4.chap07.event.Event;
import net.madvirus.spring4.chap07.event.EventType;
import net.madvirus.spring4.chap07.event.SearchOption;
@Component
public class EventService {
	private SortedMap<Long,Event> eventMap= new TreeMap<>();
	public EventService(){
		eventMap.put(1L, Event.create(1L,"JCO ��ü ���� �ߵ��̱�",EventType.CONFERENCE));
		eventMap.put(2L, Event.create(2L,"Okjsp ���� �׽�Ʈ ���α׷���",EventType.CONFERENCE));
		eventMap.put(3L, Event.create(3L,"������Ÿ�� �÷��� ��",EventType.FLASHMOB));
		eventMap.put(4L, Event.create(4L,"�±� �÷��� ��",EventType.FLASHMOB));
		eventMap.put(5L, Event.create(5L,"�÷��� ����",EventType.CONFERENCE));
		eventMap.put(6L, Event.create(6L,"���� ��Ŀ��",EventType.CIRCUS));
	}
	public List<Event> getRecommendedEventService(){
		List<Event> recommendList=new ArrayList<>();
		recommendList.add(eventMap.get(1L));
		return recommendList;
	}
	public List<Event> getOpenedEventList(SearchOption option){
		List<Event> result=new ArrayList<>();
		for(Event event : eventMap.values()){
			if(option.isAllType()){
				result.add(event);
			}else{
				for(EventType type:option.getTypes()){
					if(type==event.getType()){
						result.add(event);
						break;
					}
				}
			}
		} 
		return result;
	}
	public Event getEvent(Long eventId){
		return eventMap.get(eventId);
	}
}
