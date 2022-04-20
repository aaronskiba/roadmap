# frozen_string_literal: true

module Api
<<<<<<< HEAD

  module V1

    module Deserialization

      class Funding

        class << self

=======
  module V1
    module Deserialization
      # Logic to deserialize RDA common standard to a Plan funder and grant infor
      class Funding
        class << self
>>>>>>> upstream/master
          # Convert the funding information and attach to the Plan
          #    {
          #      "$ref": "SEE Org.deserialize! for details",
          #      "grant_id": {
          #        "$ref": "SEE Identifier.deserialize for details"
          #      },
          #      "funding_status": "granted"
          #    }
          def deserialize(plan:, json: {})
            return nil unless plan.present?
            return plan unless Api::V1::JsonValidationService.funding_valid?(json: json)

            # Attach the Funder
            plan.funder = Api::V1::Deserialization::Org.deserialize(json: json)
            return plan unless json[:grant_id].present?

            # Attach the grant Identifier to the Plan if present
            # Attach the identifier
            plan.grant = Api::V1::Deserialization::Identifier.deserialize(
              class_name: plan.class.name, json: json[:grant_id]
            )
            plan
          end
<<<<<<< HEAD

        end

      end

    end

  end

=======
        end
      end
    end
  end
>>>>>>> upstream/master
end
