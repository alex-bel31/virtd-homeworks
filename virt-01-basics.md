### **Задача 2**  

1. **Высоконагруженная база данных MySQL, критичная к отказу**  
   - **Тип платформы:** Физические сервера
   - **Обоснование**: Минимальная задержка в доступе к данным. Виртуализация может добавить накладные расходы на CPU и диск.  

2. **Различные web-приложения**  
   - **Тип платформы:** Паравиртуализация или виртуализация уровня ОС  
   - **Обоснование**: Паравиртуализация подойдет для веб-приложений, требующих раздельных сред и независимых ОС. Виртуализация уровня ОС удобна для микросервисной архитектуры, снижает накладные расходы на ресурсы и упрощает развертывание.

3. **Windows-системы для использования бухгалтерским отделом**  
   - **Тип платформы:** Паравиртуализация  
   - **Обоснование**: Паравиртуализация обеспечит гибкость, отказоустойчивость и централизованное управление + Hyper-V хорошо интегрирован в Windows-инфраструктуру.   

4. **Системы, выполняющие высокопроизводительные расчёты на GPU**  
   - **Тип платформы:** Физические серверы  
   - **Обоснование**: Физические серверы обеспечат максимальную производительность GPU.  
---  

### **Задача 3**   

1. **100 виртуальных машин на базе Linux и Windows, общие задачи, нет особых требований. Преимущественно Windows based-инфраструктура, требуется реализация программных балансировщиков нагрузки, репликации данных и автоматизированного механизма создания резервных копий**  
   - **Система управления виртуализацией**: Microsoft Hyper-V или VMware vSphere  
   - **Обоснование**: Hyper-V интегрирован в Windows-инфраструктуру и поддерживает балансировку нагрузки. VMware vSphere – более дорогой, но стабильный вариант с лучшей производительностью и управлением.  

2. **Требуется наиболее производительное бесплатное open source-решение для виртуализации небольшой (20-30 серверов) инфраструктуры на базе Linux и Windows виртуальных машин.**  
   - **Система управления виртуализацией**: Proxmox  
   - **Обоснование**: Proxmox бесплатен, поддерживает кластеризацию, снапшоты, бэкапы.

3. **Необходимо бесплатное, максимально совместимое и производительное решение для виртуализации Windows-инфраструктуры.**  
   - **Система управления виртуализацией**: Microsoft Hyper-V Server  
   - **Обоснование**: Hyper-V Server бесплатен, поддерживает Windows VM с хорошей производительностью. Интеграция с Windows, простая настройка и управление.  

4. **Необходимо рабочее окружение для тестирования программного продукта на нескольких дистрибутивах Linux.**  
   - **Система управления виртуализацией**: VirtualBox  
   - **Обоснование**: VirtualBox - самый оптимальный вариант для тестов на десктопе (гибкость, простота). 

---  

### **Задача 4**  

Опишите возможные проблемы и недостатки гетерогенной среды виртуализации (использования нескольких систем управления виртуализацией одновременно) и что необходимо сделать для минимизации этих рисков и проблем. Если бы у вас был выбор, создавали бы вы гетерогенную среду или нет?

   - Разные гипервизоры требуют различных инструментов управления и уровня специалистов. Усложняется мониторинг и автоматизация. Также образы виртуальных машин могут быть несовместимы. Разные гипервизоры требуют разных политик обновления. Различные платформы требуют разных лицензий и отличаются по стоимости. Отличаются системы управления снапшотами, резервными копиями. 

**Мнимизация рисков:**  
- Использовать единый инструмент управления (Ansible, Terraform).  
- Ограничить количество разных гипервизоров (Hyper-V + Proxmox).  
- Автоматизировать резервное копирование и мониторинг (Zabbix, Prometheus).  

**Создал бы гетерогенную среду?**  
Только при наличии веских причин (требование заказчика, совместимость с существующей инфраструктурой). В остальных случаях проще стандартизировать виртуализацию под одну платформу.