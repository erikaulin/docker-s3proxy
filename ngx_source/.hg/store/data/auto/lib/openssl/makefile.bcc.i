         �   �      ��������f
��z2B���8��S            u
# Copyright (C) Igor Sysoev


ssleay32.lib:
	cd $(OPENSSL)

	perl Configure BC-32 no-shared

	ms\do_nasm

	$(MAKE) -f ms\bcb.mak
     �     �  f          �����)9<E�I�kp"�y\A�9b            x�u�Ak1�s�!��B�z+x��Ph�.Dҕeݝ�.�IH쵿�?�c����cc�1���ҘA˘XK�1�:�t���0����S�-֠��t���hc4�f��+],VY��'�緽4K�Z�i��|��&���9�j`�M�l��l�Q!�L\0���"��P;��`x�t�V�kI����r�dg��0?���&y>�l�5�R���e���;\;    j     L  Q      �   �����$&`�X(P5�R+�e��(�F               4   �   @	perl Configure BC-32 no-shared --prefix=openssl $(OPENSSL_OPT)
    �     (  m      <   ����3͏�LY8ń&4���JF�                     # Copyright (C) Nginx, Inc.
