# encoding: utf-8

class CategoryJobsEducationresumesCommunalPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/jobs-education/resumes/communal"
  @category = "Работа и образование -> Резюме: поиск работы -> Бытовые и коммунальные услуги, муниципалитет"

  irr_multi_select "Специализация", "job_specialization"
  irr_single_select "Режим работы", "work_period"
  irr_single_select "Тип занятости", "schedule"
  irr_single_select "Пол", "job_sex"
  irr_range_select "Возраст", "age"
  irr_single_select "Образование", "job_education"
  irr_language_select "Иностранный язык", "language_type"
  irr_multi_select "Водительские права", "driving_license"
  irr_checkbox     "Личный автомобиль", "car"
end
