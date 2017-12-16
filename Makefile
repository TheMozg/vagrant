USERNAME = vagrant

NGROK = ngrok.exe
NGROK_ADDRESS = 0.tcp.ngrok.io
NGROK_PORT = $(PORT)

SERVER_PORT = 2222

PRIVATE_KEY = vagrant_key

ifneq ($(filter connect,$(MAKECMDGOALS)),)
ifeq ($(PORT),)
$(error Please specify ngrok port via PORT)
endif
endif

.PHONY: all
all:
	$(NGROK) tcp $(SERVER_PORT)

.PHONY: connect
connect:
	ssh -i $(PRIVATE_KEY) $(USERNAME)@$(NGROK_ADDRESS) -p$(NGROK_PORT)
