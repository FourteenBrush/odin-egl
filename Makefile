SRC = .
COLLECTIONS = -collection:src=$(SRC) -collection:lib=lib

CC = odin
BUILD_DIR = build
CFLAGS = -out:$(BUILD_DIR)/$(PROG) -strict-style -vet-semicolon -vet-unused -vet-cast -vet-using-param -no-entry-point $(COLLECTIONS)

BINDGEN ?= ./bindgen
.DEFAULT_GOAL := __no_default

bindgen:
	@echo "Using bindgen executable at $(BINDGEN)"
	$(BINDGEN) bindgen.sjson
	@echo -e "\nBindgen finished, ensure to perform any cleanup of the generated code if necessary"
	@echo -e "Now running syntax check...\n"
	$(MAKE) check

check: CFLAGS := $(filter-out -out:$(BUILD_DIR)/$(PROG),$(CFLAGS))
check:
	$(CC) check $(SRC) $(CFLAGS) -debug

clean:
	-@rm -r $(BUILD_DIR)

__no_default:
	@echo "No default target. Specify one explicitly."
	@exit 1

.PHONY: bindgen clean check
