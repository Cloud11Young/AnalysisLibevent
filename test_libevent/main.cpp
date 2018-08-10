#include <stdio.h>
#include "event.h"
#include <event2/listener.h>

static void listener_cb(struct evconnlistener* listener,evutil_socket_t,
	struct sockaddr*, int socklen, void*);

static void timer_cb(evutil_socket_t, short, void *);

int main(int argc, char** argv[]){
	struct event_base* base;
	struct evconnlistener* listener;	
	struct event* signal_event;
	struct sockaddr_in sin;

	base = event_base_new();	

	memset(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = htons(9995);
	
	listener = evconnlistener_new_bind(base, listener_cb, base,
		LEV_OPT_REUSEABLE | LEV_OPT_CLOSE_ON_FREE, -1, (struct sockaddr*)&sin, sizeof(sin));

	struct event* ev = event_new(base, 1, 1, timer_cb,NULL);
	evtimer_set(ev, timer_cb, NULL);
	event_base_set(base, ev);

	event_base_dispatch(base);
	evconnlistener_free(listener);
	event_base_free(base);
	return 0;
}


void listener_cb(struct evconnlistener* listener, evutil_socket_t fd,
	struct sockaddr* sa, int socklen, void* user_data){

}


void timer_cb(evutil_socket_t, short, void *){

}


