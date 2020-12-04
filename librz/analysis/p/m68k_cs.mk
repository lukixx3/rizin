OBJ_M68K_CS=analysis_m68k_cs.o

include ${CURDIR}capstone.mk

STATIC_OBJ+=$(OBJ_M68K_CS)

TARGET_M68K_CS=analysis_m68k_cs.${EXT_SO}

ALL_TARGETS+=${TARGET_M68K_CS}

${TARGET_M68K_CS}: ${OBJ_M68K_CS}
	${CC} ${CFLAGS} $(call libname,analysis_m68k_cs) $(CS_CFLAGS) \
		-o analysis_m68k_cs.${EXT_SO} ${OBJ_M68K_CS} $(CS_LDFLAGS)
