from typing import Union

from faker import Faker

faker = Faker()


def generate_contact_with_obligatory_data() -> dict[str, str]:
    return {"first_name": faker.first_name(), "last_name": faker.last_name()}


def generate_contact_with_all_data() -> dict[str, Union[str, int]]:
    return {
        "first_name": faker.first_name(),
        "last_name": faker.last_name(),
        "birth_date": faker.date_object(),
        "email": faker.email(),
        "phone": faker.phone_number(),
        "street1": faker.street_name(),
        "street2": faker.building_number(),
        "city": faker.city(),
        "state_or_province": faker.administrative_unit(),
        "country": faker.country(),
        "postal_code": faker.postalcode(),
    }
