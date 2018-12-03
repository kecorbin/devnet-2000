
windows:
	@echo "Creating Demo Windows (only works for Mac!!!!!)"
	@osascript window_layout.scpt
	@sleep 15
	@open http://${APIC_IP}


webarya:
	docker run -d --name webarya -p 8000:80 kecorbin/webarya
	sleep 3
	open http://localhost:8000

clean:
	-@docker stop webarya
	-@docker rm webarya
	ansible-playbook -i inventory.yaml site.yml -e @tenant1.yml -e state=absent
	rm *.png *.html *.retry

showtenants:
	cat ./acitoolkit_samples/aci-show-tenants.py
	python ./acitoolkit_samples/aci-show-tenants.py

subscribe:
		python ./acitoolkit_samples/aci-subscribe-tenants.py

lint:
	python ./acitoolkit_samples/acilint.py -o html
	open lint.html

diagram:
	python ./acitoolkit_samples/diagram.py -t ansible-tenant -o ansible-tenant.png
	open ansible-tenant.png

deploy:
	ansible-playbook -i inventory.yaml site.yml -e @tenant1.yml
